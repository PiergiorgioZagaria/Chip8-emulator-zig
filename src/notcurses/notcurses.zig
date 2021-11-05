pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*c_void;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const clock_t = __clock_t;
pub const time_t = __time_t;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const clockid_t = __clockid_t;
pub const timer_t = __timer_t;
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*c_void,
};
pub const __sigval_t = union_sigval;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
const struct_unnamed_2 = extern struct {
    _function: ?fn (__sigval_t) callconv(.C) void,
    _attribute: [*c]pthread_attr_t,
};
const union_unnamed_1 = extern union {
    _pad: [12]c_int,
    _tid: __pid_t,
    _sigev_thread: struct_unnamed_2,
};
pub const struct_sigevent = extern struct {
    sigev_value: __sigval_t,
    sigev_signo: c_int,
    sigev_notify: c_int,
    _sigev_un: union_unnamed_1,
};
pub const pid_t = __pid_t;
pub const struct___locale_data = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: [*c]struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_3 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub fn tolower(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return if ((__c >= -@as(c_int, 128)) and (__c < @as(c_int, 256))) (blk: {
        const tmp = __c;
        if (tmp >= 0) break :blk __ctype_tolower_loc().* + @intCast(usize, tmp) else break :blk __ctype_tolower_loc().* - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).* else __c;
}
pub fn toupper(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return if ((__c >= -@as(c_int, 128)) and (__c < @as(c_int, 256))) (blk: {
        const tmp = __c;
        if (tmp >= 0) break :blk __ctype_toupper_loc().* + @intCast(usize, tmp) else break :blk __ctype_toupper_loc().* - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).* else __c;
}
pub extern fn isblank(c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const wchar_t = c_int;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const wint_t = c_uint;
const union_unnamed_4 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_4,
};
pub const mbstate_t = __mbstate_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = c_void;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub extern fn wcscpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcsncpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
pub extern fn wcscat(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcsncat(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
pub extern fn wcscmp(__s1: [*c]const c_int, __s2: [*c]const c_int) c_int;
pub extern fn wcsncmp(__s1: [*c]const c_int, __s2: [*c]const c_int, __n: c_ulong) c_int;
pub extern fn wcscasecmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t) c_int;
pub extern fn wcsncasecmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize) c_int;
pub extern fn wcscasecmp_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __loc: locale_t) c_int;
pub extern fn wcsncasecmp_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize, __loc: locale_t) c_int;
pub extern fn wcscoll(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t) c_int;
pub extern fn wcsxfrm(noalias __s1: [*c]wchar_t, noalias __s2: [*c]const wchar_t, __n: usize) usize;
pub extern fn wcscoll_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __loc: locale_t) c_int;
pub extern fn wcsxfrm_l(__s1: [*c]wchar_t, __s2: [*c]const wchar_t, __n: usize, __loc: locale_t) usize;
pub extern fn wcsdup(__s: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcschr(__wcs: [*c]const c_int, __wc: c_int) [*c]c_int;
pub extern fn wcsrchr(__wcs: [*c]const wchar_t, __wc: wchar_t) [*c]wchar_t;
pub extern fn wcscspn(__wcs: [*c]const wchar_t, __reject: [*c]const wchar_t) usize;
pub extern fn wcsspn(__wcs: [*c]const wchar_t, __accept: [*c]const wchar_t) usize;
pub extern fn wcspbrk(__wcs: [*c]const wchar_t, __accept: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcsstr(__haystack: [*c]const wchar_t, __needle: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcstok(noalias __s: [*c]wchar_t, noalias __delim: [*c]const wchar_t, noalias __ptr: [*c][*c]wchar_t) [*c]wchar_t;
pub extern fn wcslen(__s: [*c]const c_int) c_ulong;
pub extern fn wcsnlen(__s: [*c]const wchar_t, __maxlen: usize) usize;
pub extern fn wmemchr(__s: [*c]const c_int, __c: c_int, __n: c_ulong) [*c]c_int;
pub extern fn wmemcmp(__s1: [*c]const c_int, __s2: [*c]const c_int, __n: c_ulong) c_int;
pub extern fn wmemcpy(__s1: [*c]c_int, __s2: [*c]const c_int, __n: c_ulong) [*c]c_int;
pub extern fn wmemmove(__s1: [*c]c_int, __s2: [*c]const c_int, __n: c_ulong) [*c]c_int;
pub extern fn wmemset(__s: [*c]wchar_t, __c: wchar_t, __n: usize) [*c]wchar_t; // /usr/include/wchar.h:320:11: warning: TODO implement function '__builtin_constant_p' in std.zig.c_builtins
// /usr/include/wchar.h:319:8: warning: unable to translate function, demoted to extern
pub extern fn btowc(arg___c: c_int) callconv(.C) wint_t; // /usr/include/wchar.h:326:11: warning: TODO implement function '__builtin_constant_p' in std.zig.c_builtins
// /usr/include/wchar.h:325:8: warning: unable to translate function, demoted to extern
pub extern fn wctob(arg___wc: wint_t) callconv(.C) c_int;
pub extern fn mbsinit(__ps: [*c]const mbstate_t) c_int;
pub extern fn mbrtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize, noalias __p: [*c]mbstate_t) usize;
pub extern fn wcrtomb(noalias __s: [*c]u8, __wc: wchar_t, noalias __ps: [*c]mbstate_t) usize;
pub extern fn __mbrlen(noalias __s: [*c]const u8, __n: usize, noalias __ps: [*c]mbstate_t) usize;
pub fn mbrlen(noalias arg___s: [*c]const u8, arg___n: usize, noalias arg___ps: [*c]mbstate_t) callconv(.C) usize {
    var __s = arg___s;
    var __n = arg___n;
    var __ps = arg___ps;
    return if (__ps != @ptrCast([*c]mbstate_t, @alignCast(@import("std").meta.alignment(mbstate_t), @intToPtr(?*c_void, @as(c_int, 0))))) mbrtowc(null, __s, __n, __ps) else __mbrlen(__s, __n, null);
}
pub extern fn __btowc_alias(__c: c_int) wint_t;
pub extern fn __wctob_alias(__c: wint_t) c_int;
pub extern fn mbsrtowcs(noalias __dst: [*c]wchar_t, noalias __src: [*c][*c]const u8, __len: usize, noalias __ps: [*c]mbstate_t) usize;
pub extern fn wcsrtombs(noalias __dst: [*c]u8, noalias __src: [*c][*c]const wchar_t, __len: usize, noalias __ps: [*c]mbstate_t) usize;
pub extern fn mbsnrtowcs(noalias __dst: [*c]wchar_t, noalias __src: [*c][*c]const u8, __nmc: usize, __len: usize, noalias __ps: [*c]mbstate_t) usize;
pub extern fn wcsnrtombs(noalias __dst: [*c]u8, noalias __src: [*c][*c]const wchar_t, __nwc: usize, __len: usize, noalias __ps: [*c]mbstate_t) usize;
pub extern fn wcstod(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) f64;
pub extern fn wcstof(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) f32;
pub extern fn wcstold(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) c_longdouble;
pub extern fn wcstol(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_long;
pub extern fn wcstoul(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_ulong;
pub extern fn wcstoll(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_longlong;
pub extern fn wcstoull(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_ulonglong;
pub extern fn wcpcpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
pub extern fn wcpncpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
pub extern fn open_wmemstream(__bufloc: [*c][*c]wchar_t, __sizeloc: [*c]usize) [*c]__FILE;
pub extern fn fwide(__fp: [*c]__FILE, __mode: c_int) c_int;
pub extern fn fwprintf(noalias __stream: [*c]__FILE, noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn wprintf(noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn swprintf(noalias __s: [*c]wchar_t, __n: usize, noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn vfwprintf(noalias __s: [*c]__FILE, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vwprintf(noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vswprintf(noalias __s: [*c]wchar_t, __n: usize, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fwscanf(noalias __stream: [*c]__FILE, noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn wscanf(noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn swscanf(noalias __s: [*c]const wchar_t, noalias __format: [*c]const wchar_t, ...) c_int;
pub extern fn vfwscanf(noalias __s: [*c]__FILE, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vwscanf(noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vswscanf(noalias __s: [*c]const wchar_t, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetwc(__stream: [*c]__FILE) wint_t;
pub extern fn getwc(__stream: [*c]__FILE) wint_t;
pub extern fn getwchar() wint_t;
pub extern fn fputwc(__wc: wchar_t, __stream: [*c]__FILE) wint_t;
pub extern fn putwc(__wc: wchar_t, __stream: [*c]__FILE) wint_t;
pub extern fn putwchar(__wc: wchar_t) wint_t;
pub extern fn fgetws(noalias __ws: [*c]wchar_t, __n: c_int, noalias __stream: [*c]__FILE) [*c]wchar_t;
pub extern fn fputws(noalias __ws: [*c]const wchar_t, noalias __stream: [*c]__FILE) c_int;
pub extern fn ungetwc(__wc: wint_t, __stream: [*c]__FILE) wint_t;
pub extern fn wcsftime(noalias __s: [*c]wchar_t, __maxsize: usize, noalias __format: [*c]const wchar_t, noalias __tp: [*c]const struct_tm) usize;
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*c_void, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag) callconv(.C) c_int {
    var __fmt = arg___fmt;
    var __arg = arg___arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdin.*._IO_read_ptr >= stdin.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(stdin) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &stdin.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__fp.*._IO_read_ptr >= __fp.*._IO_read_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })).*));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(__stream.*._IO_write_ptr >= __stream.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(stdout.*._IO_write_ptr >= stdout.*._IO_write_end))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(stdout, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, __c))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, blk: {
        const tmp = @bitCast(u8, @truncate(i8, __c));
        (blk_1: {
            const ref = &stdout.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*c_void, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const c_void, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return @boolToInt((__stream.*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub fn atof(arg___nptr: [*c]const u8) callconv(.C) f64 {
    var __nptr = arg___nptr;
    return strtod(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))));
}
pub fn atoi(arg___nptr: [*c]const u8) callconv(.C) c_int {
    var __nptr = arg___nptr;
    return @bitCast(c_int, @truncate(c_int, strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10))));
}
pub fn atol(arg___nptr: [*c]const u8) callconv(.C) c_long {
    var __nptr = arg___nptr;
    return strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10));
}
pub fn atoll(arg___nptr: [*c]const u8) callconv(.C) c_longlong {
    var __nptr = arg___nptr;
    return strtoll(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10));
}
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, __bsx)) >> @intCast(@import("std").math.Log2Int(c_int), 8)) & @as(c_int, 255)) | ((@bitCast(c_int, @as(c_uint, __bsx)) & @as(c_int, 255)) << @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_uint), 24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 255)) << @intCast(@import("std").math.Log2Int(c_uint), 24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint64_t, @truncate(c_ulong, ((((((((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 56)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 71776119061217280)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 280375465082880)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 1095216660480)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 4278190080)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 16711680)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 65280)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 56))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
const struct_unnamed_6 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_5 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_6,
};
const struct_unnamed_8 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_7 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_8,
};
pub const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_5,
    unnamed_1: union_unnamed_7,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*c_void;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
pub extern fn free(__ptr: ?*c_void) void;
pub extern fn reallocarray(__ptr: ?*c_void, __nmemb: usize, __size: usize) ?*c_void;
pub extern fn alloca(__size: c_ulong) ?*c_void;
pub extern fn valloc(__size: usize) ?*c_void;
pub extern fn posix_memalign(__memptr: [*c]?*c_void, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?fn (c_int, ?*c_void) callconv(.C) void, __arg: ?*c_void) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
pub fn bsearch(arg___key: ?*const c_void, arg___base: ?*const c_void, arg___nmemb: usize, arg___size: usize, arg___compar: __compar_fn_t) callconv(.C) ?*c_void {
    var __key = arg___key;
    var __base = arg___base;
    var __nmemb = arg___nmemb;
    var __size = arg___size;
    var __compar = arg___compar;
    var __l: usize = undefined;
    var __u: usize = undefined;
    var __idx: usize = undefined;
    var __p: ?*const c_void = undefined;
    var __comparison: c_int = undefined;
    __l = 0;
    __u = __nmemb;
    while (__l < __u) {
        __idx = (__l +% __u) / @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        __p = @ptrCast(?*const c_void, @ptrCast([*c]const u8, @alignCast(@import("std").meta.alignment(u8), __base)) + (__idx *% __size));
        __comparison = __compar.?(__key, __p);
        if (__comparison < @as(c_int, 0)) {
            __u = __idx;
        } else if (__comparison > @as(c_int, 0)) {
            __l = __idx +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else {
            return @intToPtr(?*c_void, @ptrToInt(__p));
        }
    }
    return @intToPtr(?*c_void, @as(c_int, 0));
}
pub extern fn qsort(__base: ?*c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub extern fn memcpy(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memmove(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memccpy(__dest: ?*c_void, __src: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn memset(__s: ?*c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn memcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const c_void, __dest: ?*c_void, __n: usize) void;
pub extern fn bzero(__s: ?*c_void, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*c_void, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub const sig_atomic_t = __sig_atomic_t;
const struct_unnamed_10 = extern struct {
    si_pid: __pid_t,
    si_uid: __uid_t,
};
const struct_unnamed_11 = extern struct {
    si_tid: c_int,
    si_overrun: c_int,
    si_sigval: __sigval_t,
};
const struct_unnamed_12 = extern struct {
    si_pid: __pid_t,
    si_uid: __uid_t,
    si_sigval: __sigval_t,
};
const struct_unnamed_13 = extern struct {
    si_pid: __pid_t,
    si_uid: __uid_t,
    si_status: c_int,
    si_utime: __clock_t,
    si_stime: __clock_t,
};
const struct_unnamed_16 = extern struct {
    _lower: ?*c_void,
    _upper: ?*c_void,
};
const union_unnamed_15 = extern union {
    _addr_bnd: struct_unnamed_16,
    _pkey: __uint32_t,
};
const struct_unnamed_14 = extern struct {
    si_addr: ?*c_void,
    si_addr_lsb: c_short,
    _bounds: union_unnamed_15,
};
const struct_unnamed_17 = extern struct {
    si_band: c_long,
    si_fd: c_int,
};
const struct_unnamed_18 = extern struct {
    _call_addr: ?*c_void,
    _syscall: c_int,
    _arch: c_uint,
};
const union_unnamed_9 = extern union {
    _pad: [28]c_int,
    _kill: struct_unnamed_10,
    _timer: struct_unnamed_11,
    _rt: struct_unnamed_12,
    _sigchld: struct_unnamed_13,
    _sigfault: struct_unnamed_14,
    _sigpoll: struct_unnamed_17,
    _sigsys: struct_unnamed_18,
};
pub const siginfo_t = extern struct {
    si_signo: c_int,
    si_errno: c_int,
    si_code: c_int,
    __pad0: c_int,
    _sifields: union_unnamed_9,
};
pub const SI_ASYNCNL: c_int = -60;
pub const SI_DETHREAD: c_int = -7;
pub const SI_TKILL: c_int = -6;
pub const SI_SIGIO: c_int = -5;
pub const SI_ASYNCIO: c_int = -4;
pub const SI_MESGQ: c_int = -3;
pub const SI_TIMER: c_int = -2;
pub const SI_QUEUE: c_int = -1;
pub const SI_USER: c_int = 0;
pub const SI_KERNEL: c_int = 128;
const enum_unnamed_19 = c_int;
pub const ILL_ILLOPC: c_int = 1;
pub const ILL_ILLOPN: c_int = 2;
pub const ILL_ILLADR: c_int = 3;
pub const ILL_ILLTRP: c_int = 4;
pub const ILL_PRVOPC: c_int = 5;
pub const ILL_PRVREG: c_int = 6;
pub const ILL_COPROC: c_int = 7;
pub const ILL_BADSTK: c_int = 8;
pub const ILL_BADIADDR: c_int = 9;
const enum_unnamed_20 = c_uint;
pub const FPE_INTDIV: c_int = 1;
pub const FPE_INTOVF: c_int = 2;
pub const FPE_FLTDIV: c_int = 3;
pub const FPE_FLTOVF: c_int = 4;
pub const FPE_FLTUND: c_int = 5;
pub const FPE_FLTRES: c_int = 6;
pub const FPE_FLTINV: c_int = 7;
pub const FPE_FLTSUB: c_int = 8;
pub const FPE_FLTUNK: c_int = 14;
pub const FPE_CONDTRAP: c_int = 15;
const enum_unnamed_21 = c_uint;
pub const SEGV_MAPERR: c_int = 1;
pub const SEGV_ACCERR: c_int = 2;
pub const SEGV_BNDERR: c_int = 3;
pub const SEGV_PKUERR: c_int = 4;
pub const SEGV_ACCADI: c_int = 5;
pub const SEGV_ADIDERR: c_int = 6;
pub const SEGV_ADIPERR: c_int = 7;
pub const SEGV_MTEAERR: c_int = 8;
pub const SEGV_MTESERR: c_int = 9;
const enum_unnamed_22 = c_uint;
pub const BUS_ADRALN: c_int = 1;
pub const BUS_ADRERR: c_int = 2;
pub const BUS_OBJERR: c_int = 3;
pub const BUS_MCEERR_AR: c_int = 4;
pub const BUS_MCEERR_AO: c_int = 5;
const enum_unnamed_23 = c_uint;
pub const CLD_EXITED: c_int = 1;
pub const CLD_KILLED: c_int = 2;
pub const CLD_DUMPED: c_int = 3;
pub const CLD_TRAPPED: c_int = 4;
pub const CLD_STOPPED: c_int = 5;
pub const CLD_CONTINUED: c_int = 6;
const enum_unnamed_24 = c_uint;
pub const POLL_IN: c_int = 1;
pub const POLL_OUT: c_int = 2;
pub const POLL_MSG: c_int = 3;
pub const POLL_ERR: c_int = 4;
pub const POLL_PRI: c_int = 5;
pub const POLL_HUP: c_int = 6;
const enum_unnamed_25 = c_uint;
pub const sigval_t = __sigval_t;
pub const sigevent_t = struct_sigevent;
pub const SIGEV_SIGNAL: c_int = 0;
pub const SIGEV_NONE: c_int = 1;
pub const SIGEV_THREAD: c_int = 2;
pub const SIGEV_THREAD_ID: c_int = 4;
const enum_unnamed_26 = c_uint;
pub const __sighandler_t = ?fn (c_int) callconv(.C) void;
pub extern fn __sysv_signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn kill(__pid: __pid_t, __sig: c_int) c_int;
pub extern fn killpg(__pgrp: __pid_t, __sig: c_int) c_int;
pub extern fn raise(__sig: c_int) c_int;
pub extern fn ssignal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
pub extern fn gsignal(__sig: c_int) c_int;
pub extern fn psignal(__sig: c_int, __s: [*c]const u8) void;
pub extern fn psiginfo(__pinfo: [*c]const siginfo_t, __s: [*c]const u8) void;
pub extern fn sigblock(__mask: c_int) c_int;
pub extern fn sigsetmask(__mask: c_int) c_int;
pub extern fn siggetmask() c_int;
pub const sig_t = __sighandler_t;
pub extern fn sigemptyset(__set: [*c]sigset_t) c_int;
pub extern fn sigfillset(__set: [*c]sigset_t) c_int;
pub extern fn sigaddset(__set: [*c]sigset_t, __signo: c_int) c_int;
pub extern fn sigdelset(__set: [*c]sigset_t, __signo: c_int) c_int;
pub extern fn sigismember(__set: [*c]const sigset_t, __signo: c_int) c_int;
const union_unnamed_27 = extern union {
    sa_handler: __sighandler_t,
    sa_sigaction: ?fn (c_int, [*c]siginfo_t, ?*c_void) callconv(.C) void,
};
pub const struct_sigaction = extern struct {
    __sigaction_handler: union_unnamed_27,
    sa_mask: __sigset_t,
    sa_flags: c_int,
    sa_restorer: ?fn () callconv(.C) void,
};
pub extern fn sigprocmask(__how: c_int, noalias __set: [*c]const sigset_t, noalias __oset: [*c]sigset_t) c_int;
pub extern fn sigsuspend(__set: [*c]const sigset_t) c_int;
pub extern fn sigaction(__sig: c_int, noalias __act: [*c]const struct_sigaction, noalias __oact: [*c]struct_sigaction) c_int;
pub extern fn sigpending(__set: [*c]sigset_t) c_int;
pub extern fn sigwait(noalias __set: [*c]const sigset_t, noalias __sig: [*c]c_int) c_int;
pub extern fn sigwaitinfo(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t) c_int;
pub extern fn sigtimedwait(noalias __set: [*c]const sigset_t, noalias __info: [*c]siginfo_t, noalias __timeout: [*c]const struct_timespec) c_int;
pub extern fn sigqueue(__pid: __pid_t, __sig: c_int, __val: union_sigval) c_int;
pub const struct__fpx_sw_bytes = extern struct {
    magic1: __uint32_t,
    extended_size: __uint32_t,
    xstate_bv: __uint64_t,
    xstate_size: __uint32_t,
    __glibc_reserved1: [7]__uint32_t,
};
pub const struct__fpreg = extern struct {
    significand: [4]c_ushort,
    exponent: c_ushort,
};
pub const struct__fpxreg = extern struct {
    significand: [4]c_ushort,
    exponent: c_ushort,
    __glibc_reserved1: [3]c_ushort,
};
pub const struct__xmmreg = extern struct {
    element: [4]__uint32_t,
};
pub const struct__fpstate = extern struct {
    cwd: __uint16_t,
    swd: __uint16_t,
    ftw: __uint16_t,
    fop: __uint16_t,
    rip: __uint64_t,
    rdp: __uint64_t,
    mxcsr: __uint32_t,
    mxcr_mask: __uint32_t,
    _st: [8]struct__fpxreg,
    _xmm: [16]struct__xmmreg,
    __glibc_reserved1: [24]__uint32_t,
};
const union_unnamed_28 = extern union {
    fpstate: [*c]struct__fpstate,
    __fpstate_word: __uint64_t,
};
pub const struct_sigcontext = extern struct {
    r8: __uint64_t,
    r9: __uint64_t,
    r10: __uint64_t,
    r11: __uint64_t,
    r12: __uint64_t,
    r13: __uint64_t,
    r14: __uint64_t,
    r15: __uint64_t,
    rdi: __uint64_t,
    rsi: __uint64_t,
    rbp: __uint64_t,
    rbx: __uint64_t,
    rdx: __uint64_t,
    rax: __uint64_t,
    rcx: __uint64_t,
    rsp: __uint64_t,
    rip: __uint64_t,
    eflags: __uint64_t,
    cs: c_ushort,
    gs: c_ushort,
    fs: c_ushort,
    __pad0: c_ushort,
    err: __uint64_t,
    trapno: __uint64_t,
    oldmask: __uint64_t,
    cr2: __uint64_t,
    unnamed_0: union_unnamed_28,
    __reserved1: [8]__uint64_t,
};
pub const struct__xsave_hdr = extern struct {
    xstate_bv: __uint64_t,
    __glibc_reserved1: [2]__uint64_t,
    __glibc_reserved2: [5]__uint64_t,
};
pub const struct__ymmh_state = extern struct {
    ymmh_space: [64]__uint32_t,
};
pub const struct__xstate = extern struct {
    fpstate: struct__fpstate,
    xstate_hdr: struct__xsave_hdr,
    ymmh: struct__ymmh_state,
};
pub extern fn sigreturn(__scp: [*c]struct_sigcontext) c_int;
pub const stack_t = extern struct {
    ss_sp: ?*c_void,
    ss_flags: c_int,
    ss_size: usize,
};
pub const greg_t = c_longlong;
pub const gregset_t = [23]greg_t;
pub const struct__libc_fpxreg = extern struct {
    significand: [4]c_ushort,
    exponent: c_ushort,
    __glibc_reserved1: [3]c_ushort,
};
pub const struct__libc_xmmreg = extern struct {
    element: [4]__uint32_t,
};
pub const struct__libc_fpstate = extern struct {
    cwd: __uint16_t,
    swd: __uint16_t,
    ftw: __uint16_t,
    fop: __uint16_t,
    rip: __uint64_t,
    rdp: __uint64_t,
    mxcsr: __uint32_t,
    mxcr_mask: __uint32_t,
    _st: [8]struct__libc_fpxreg,
    _xmm: [16]struct__libc_xmmreg,
    __glibc_reserved1: [24]__uint32_t,
};
pub const fpregset_t = [*c]struct__libc_fpstate;
pub const mcontext_t = extern struct {
    gregs: gregset_t,
    fpregs: fpregset_t,
    __reserved1: [8]c_ulonglong,
};
pub const struct_ucontext_t = extern struct {
    uc_flags: c_ulong,
    uc_link: [*c]struct_ucontext_t,
    uc_stack: stack_t,
    uc_mcontext: mcontext_t,
    uc_sigmask: sigset_t,
    __fpregs_mem: struct__libc_fpstate,
    __ssp: [4]c_ulonglong,
};
pub const ucontext_t = struct_ucontext_t;
pub extern fn siginterrupt(__sig: c_int, __interrupt: c_int) c_int;
pub const SS_ONSTACK: c_int = 1;
pub const SS_DISABLE: c_int = 2;
const enum_unnamed_29 = c_uint;
pub extern fn sigaltstack(noalias __ss: [*c]const stack_t, noalias __oss: [*c]stack_t) c_int;
pub const struct_sigstack = extern struct {
    ss_sp: ?*c_void,
    ss_onstack: c_int,
};
pub extern fn sigstack(__ss: [*c]struct_sigstack, __oss: [*c]struct_sigstack) c_int;
pub extern fn pthread_sigmask(__how: c_int, noalias __newmask: [*c]const __sigset_t, noalias __oldmask: [*c]__sigset_t) c_int;
pub extern fn pthread_kill(__threadid: pthread_t, __signo: c_int) c_int;
pub extern fn __libc_current_sigrtmin() c_int;
pub extern fn __libc_current_sigrtmax() c_int;
pub const struct_iovec = extern struct {
    iov_base: ?*c_void,
    iov_len: usize,
};
pub const socklen_t = __socklen_t;
pub const SOCK_STREAM: c_int = 1;
pub const SOCK_DGRAM: c_int = 2;
pub const SOCK_RAW: c_int = 3;
pub const SOCK_RDM: c_int = 4;
pub const SOCK_SEQPACKET: c_int = 5;
pub const SOCK_DCCP: c_int = 6;
pub const SOCK_PACKET: c_int = 10;
pub const SOCK_CLOEXEC: c_int = 524288;
pub const SOCK_NONBLOCK: c_int = 2048;
pub const enum___socket_type = c_uint;
pub const sa_family_t = c_ushort;
pub const struct_sockaddr = extern struct {
    sa_family: sa_family_t,
    sa_data: [14]u8,
};
pub const struct_sockaddr_storage = extern struct {
    ss_family: sa_family_t,
    __ss_padding: [118]u8,
    __ss_align: c_ulong,
};
pub const MSG_OOB: c_int = 1;
pub const MSG_PEEK: c_int = 2;
pub const MSG_DONTROUTE: c_int = 4;
pub const MSG_CTRUNC: c_int = 8;
pub const MSG_PROXY: c_int = 16;
pub const MSG_TRUNC: c_int = 32;
pub const MSG_DONTWAIT: c_int = 64;
pub const MSG_EOR: c_int = 128;
pub const MSG_WAITALL: c_int = 256;
pub const MSG_FIN: c_int = 512;
pub const MSG_SYN: c_int = 1024;
pub const MSG_CONFIRM: c_int = 2048;
pub const MSG_RST: c_int = 4096;
pub const MSG_ERRQUEUE: c_int = 8192;
pub const MSG_NOSIGNAL: c_int = 16384;
pub const MSG_MORE: c_int = 32768;
pub const MSG_WAITFORONE: c_int = 65536;
pub const MSG_BATCH: c_int = 262144;
pub const MSG_ZEROCOPY: c_int = 67108864;
pub const MSG_FASTOPEN: c_int = 536870912;
pub const MSG_CMSG_CLOEXEC: c_int = 1073741824;
const enum_unnamed_30 = c_uint;
pub const struct_msghdr = extern struct {
    msg_name: ?*c_void,
    msg_namelen: socklen_t,
    msg_iov: [*c]struct_iovec,
    msg_iovlen: usize,
    msg_control: ?*c_void,
    msg_controllen: usize,
    msg_flags: c_int,
};
pub const struct_cmsghdr = extern struct {
    cmsg_len: usize align(8),
    cmsg_level: c_int,
    cmsg_type: c_int,
    pub fn __cmsg_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 16));
    }
};
pub fn __cmsg_nxthdr(arg___mhdr: [*c]struct_msghdr, arg___cmsg: [*c]struct_cmsghdr) callconv(.C) [*c]struct_cmsghdr {
    var __mhdr = arg___mhdr;
    var __cmsg = arg___cmsg;
    if (__cmsg.*.cmsg_len < @sizeOf(struct_cmsghdr)) return @intToPtr([*c]struct_cmsghdr, @as(c_int, 0));
    __cmsg = @ptrCast([*c]struct_cmsghdr, @alignCast(@import("std").meta.alignment(struct_cmsghdr), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), __cmsg)) + (((__cmsg.*.cmsg_len +% @sizeOf(usize)) -% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) & @bitCast(usize, ~(@sizeOf(usize) -% @bitCast(c_ulong, @as(c_long, @as(c_int, 1))))))));
    if ((@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), __cmsg + @bitCast(usize, @intCast(isize, @as(c_int, 1))))) > (@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), __mhdr.*.msg_control)) + __mhdr.*.msg_controllen)) or ((@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), __cmsg)) + (((__cmsg.*.cmsg_len +% @sizeOf(usize)) -% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) & @bitCast(usize, ~(@sizeOf(usize) -% @bitCast(c_ulong, @as(c_long, @as(c_int, 1))))))) > (@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), __mhdr.*.msg_control)) + __mhdr.*.msg_controllen))) return @intToPtr([*c]struct_cmsghdr, @as(c_int, 0));
    return __cmsg;
}
pub const SCM_RIGHTS: c_int = 1;
const enum_unnamed_31 = c_uint;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong,
};
pub const __kernel_sighandler_t = ?fn (c_int) callconv(.C) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int,
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const struct_linger = extern struct {
    l_onoff: c_int,
    l_linger: c_int,
};
pub const struct_osockaddr = extern struct {
    sa_family: c_ushort,
    sa_data: [14]u8,
};
pub const SHUT_RD: c_int = 0;
pub const SHUT_WR: c_int = 1;
pub const SHUT_RDWR: c_int = 2;
const enum_unnamed_32 = c_uint;
pub extern fn socket(__domain: c_int, __type: c_int, __protocol: c_int) c_int;
pub extern fn socketpair(__domain: c_int, __type: c_int, __protocol: c_int, __fds: [*c]c_int) c_int;
pub extern fn bind(__fd: c_int, __addr: [*c]const struct_sockaddr, __len: socklen_t) c_int;
pub extern fn getsockname(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __len: [*c]socklen_t) c_int;
pub extern fn connect(__fd: c_int, __addr: [*c]const struct_sockaddr, __len: socklen_t) c_int;
pub extern fn getpeername(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __len: [*c]socklen_t) c_int;
pub extern fn send(__fd: c_int, __buf: ?*const c_void, __n: usize, __flags: c_int) isize;
pub extern fn recv(__fd: c_int, __buf: ?*c_void, __n: usize, __flags: c_int) isize;
pub extern fn sendto(__fd: c_int, __buf: ?*const c_void, __n: usize, __flags: c_int, __addr: [*c]const struct_sockaddr, __addr_len: socklen_t) isize;
pub extern fn recvfrom(__fd: c_int, noalias __buf: ?*c_void, __n: usize, __flags: c_int, noalias __addr: [*c]struct_sockaddr, noalias __addr_len: [*c]socklen_t) isize;
pub extern fn sendmsg(__fd: c_int, __message: [*c]const struct_msghdr, __flags: c_int) isize;
pub extern fn recvmsg(__fd: c_int, __message: [*c]struct_msghdr, __flags: c_int) isize;
pub extern fn getsockopt(__fd: c_int, __level: c_int, __optname: c_int, noalias __optval: ?*c_void, noalias __optlen: [*c]socklen_t) c_int;
pub extern fn setsockopt(__fd: c_int, __level: c_int, __optname: c_int, __optval: ?*const c_void, __optlen: socklen_t) c_int;
pub extern fn listen(__fd: c_int, __n: c_int) c_int;
pub extern fn accept(__fd: c_int, noalias __addr: [*c]struct_sockaddr, noalias __addr_len: [*c]socklen_t) c_int;
pub extern fn shutdown(__fd: c_int, __how: c_int) c_int;
pub extern fn sockatmark(__fd: c_int) c_int;
pub extern fn isfdtype(__fd: c_int, __fdtype: c_int) c_int;
pub const in_addr_t = u32;
pub const struct_in_addr = extern struct {
    s_addr: in_addr_t,
};
pub const struct_ip_opts = extern struct {
    ip_dst: struct_in_addr,
    ip_opts: [40]u8,
};
pub const struct_ip_mreqn = extern struct {
    imr_multiaddr: struct_in_addr,
    imr_address: struct_in_addr,
    imr_ifindex: c_int,
};
pub const struct_in_pktinfo = extern struct {
    ipi_ifindex: c_int,
    ipi_spec_dst: struct_in_addr,
    ipi_addr: struct_in_addr,
};
pub const IPPROTO_IP: c_int = 0;
pub const IPPROTO_ICMP: c_int = 1;
pub const IPPROTO_IGMP: c_int = 2;
pub const IPPROTO_IPIP: c_int = 4;
pub const IPPROTO_TCP: c_int = 6;
pub const IPPROTO_EGP: c_int = 8;
pub const IPPROTO_PUP: c_int = 12;
pub const IPPROTO_UDP: c_int = 17;
pub const IPPROTO_IDP: c_int = 22;
pub const IPPROTO_TP: c_int = 29;
pub const IPPROTO_DCCP: c_int = 33;
pub const IPPROTO_IPV6: c_int = 41;
pub const IPPROTO_RSVP: c_int = 46;
pub const IPPROTO_GRE: c_int = 47;
pub const IPPROTO_ESP: c_int = 50;
pub const IPPROTO_AH: c_int = 51;
pub const IPPROTO_MTP: c_int = 92;
pub const IPPROTO_BEETPH: c_int = 94;
pub const IPPROTO_ENCAP: c_int = 98;
pub const IPPROTO_PIM: c_int = 103;
pub const IPPROTO_COMP: c_int = 108;
pub const IPPROTO_SCTP: c_int = 132;
pub const IPPROTO_UDPLITE: c_int = 136;
pub const IPPROTO_MPLS: c_int = 137;
pub const IPPROTO_ETHERNET: c_int = 143;
pub const IPPROTO_RAW: c_int = 255;
pub const IPPROTO_MPTCP: c_int = 262;
pub const IPPROTO_MAX: c_int = 263;
const enum_unnamed_33 = c_uint;
pub const IPPROTO_HOPOPTS: c_int = 0;
pub const IPPROTO_ROUTING: c_int = 43;
pub const IPPROTO_FRAGMENT: c_int = 44;
pub const IPPROTO_ICMPV6: c_int = 58;
pub const IPPROTO_NONE: c_int = 59;
pub const IPPROTO_DSTOPTS: c_int = 60;
pub const IPPROTO_MH: c_int = 135;
const enum_unnamed_34 = c_uint;
pub const in_port_t = u16;
pub const IPPORT_ECHO: c_int = 7;
pub const IPPORT_DISCARD: c_int = 9;
pub const IPPORT_SYSTAT: c_int = 11;
pub const IPPORT_DAYTIME: c_int = 13;
pub const IPPORT_NETSTAT: c_int = 15;
pub const IPPORT_FTP: c_int = 21;
pub const IPPORT_TELNET: c_int = 23;
pub const IPPORT_SMTP: c_int = 25;
pub const IPPORT_TIMESERVER: c_int = 37;
pub const IPPORT_NAMESERVER: c_int = 42;
pub const IPPORT_WHOIS: c_int = 43;
pub const IPPORT_MTP: c_int = 57;
pub const IPPORT_TFTP: c_int = 69;
pub const IPPORT_RJE: c_int = 77;
pub const IPPORT_FINGER: c_int = 79;
pub const IPPORT_TTYLINK: c_int = 87;
pub const IPPORT_SUPDUP: c_int = 95;
pub const IPPORT_EXECSERVER: c_int = 512;
pub const IPPORT_LOGINSERVER: c_int = 513;
pub const IPPORT_CMDSERVER: c_int = 514;
pub const IPPORT_EFSSERVER: c_int = 520;
pub const IPPORT_BIFFUDP: c_int = 512;
pub const IPPORT_WHOSERVER: c_int = 513;
pub const IPPORT_ROUTESERVER: c_int = 520;
pub const IPPORT_RESERVED: c_int = 1024;
pub const IPPORT_USERRESERVED: c_int = 5000;
const enum_unnamed_35 = c_uint;
const union_unnamed_36 = extern union {
    __u6_addr8: [16]u8,
    __u6_addr16: [8]u16,
    __u6_addr32: [4]u32,
};
pub const struct_in6_addr = extern struct {
    __in6_u: union_unnamed_36,
};
pub extern const in6addr_any: struct_in6_addr;
pub extern const in6addr_loopback: struct_in6_addr;
pub const struct_sockaddr_in = extern struct {
    sin_family: sa_family_t,
    sin_port: in_port_t,
    sin_addr: struct_in_addr,
    sin_zero: [8]u8,
};
pub const struct_sockaddr_in6 = extern struct {
    sin6_family: sa_family_t,
    sin6_port: in_port_t,
    sin6_flowinfo: u32,
    sin6_addr: struct_in6_addr,
    sin6_scope_id: u32,
};
pub const struct_ip_mreq = extern struct {
    imr_multiaddr: struct_in_addr,
    imr_interface: struct_in_addr,
};
pub const struct_ip_mreq_source = extern struct {
    imr_multiaddr: struct_in_addr,
    imr_interface: struct_in_addr,
    imr_sourceaddr: struct_in_addr,
};
pub const struct_ipv6_mreq = extern struct {
    ipv6mr_multiaddr: struct_in6_addr,
    ipv6mr_interface: c_uint,
};
pub const struct_group_req = extern struct {
    gr_interface: u32,
    gr_group: struct_sockaddr_storage,
};
pub const struct_group_source_req = extern struct {
    gsr_interface: u32,
    gsr_group: struct_sockaddr_storage,
    gsr_source: struct_sockaddr_storage,
};
pub const struct_ip_msfilter = extern struct {
    imsf_multiaddr: struct_in_addr,
    imsf_interface: struct_in_addr,
    imsf_fmode: u32,
    imsf_numsrc: u32,
    imsf_slist: [1]struct_in_addr,
};
pub const struct_group_filter = extern struct {
    gf_interface: u32,
    gf_group: struct_sockaddr_storage,
    gf_fmode: u32,
    gf_numsrc: u32,
    gf_slist: [1]struct_sockaddr_storage,
};
pub extern fn ntohl(__netlong: u32) u32;
pub extern fn ntohs(__netshort: u16) u16;
pub extern fn htonl(__hostlong: u32) u32;
pub extern fn htons(__hostshort: u16) u16;
pub extern fn bindresvport(__sockfd: c_int, __sock_in: [*c]struct_sockaddr_in) c_int;
pub extern fn bindresvport6(__sockfd: c_int, __sock_in: [*c]struct_sockaddr_in6) c_int;
pub extern fn notcurses_version() [*c]const u8;
pub extern fn notcurses_version_components(major: [*c]c_int, minor: [*c]c_int, patch: [*c]c_int, tweak: [*c]c_int) void;
pub const struct_notcurses = opaque {};
pub const struct_ncplane = opaque {};
pub const struct_ncvisual = opaque {};
pub const struct_ncuplot = opaque {};
pub const struct_ncdplot = opaque {};
pub const struct_ncprogbar = opaque {};
pub const struct_ncfdplane = opaque {};
pub const struct_ncsubproc = opaque {};
pub const struct_ncselector = opaque {};
pub const struct_ncmultiselector = opaque {};
pub const struct_ncreader = opaque {};
pub const struct_ncfadectx = opaque {};
pub const struct_nctablet = opaque {};
pub const struct_ncreel = opaque {};
pub const struct_nctab = opaque {};
pub const struct_nctabbed = opaque {};
pub const struct_ncdirect = opaque {};
pub const NCBLIT_DEFAULT: c_int = 0;
pub const NCBLIT_1x1: c_int = 1;
pub const NCBLIT_2x1: c_int = 2;
pub const NCBLIT_2x2: c_int = 3;
pub const NCBLIT_3x2: c_int = 4;
pub const NCBLIT_BRAILLE: c_int = 5;
pub const NCBLIT_PIXEL: c_int = 6;
pub const NCBLIT_4x1: c_int = 7;
pub const NCBLIT_8x1: c_int = 8;
pub const ncblitter_e = c_uint;
pub const NCALIGN_UNALIGNED: c_int = 0;
pub const NCALIGN_LEFT: c_int = 1;
pub const NCALIGN_CENTER: c_int = 2;
pub const NCALIGN_RIGHT: c_int = 3;
pub const ncalign_e = c_uint;
pub const NCSCALE_NONE: c_int = 0;
pub const NCSCALE_SCALE: c_int = 1;
pub const NCSCALE_STRETCH: c_int = 2;
pub const NCSCALE_NONE_HIRES: c_int = 3;
pub const NCSCALE_SCALE_HIRES: c_int = 4;
pub const ncscale_e = c_uint;
pub extern fn ncstrwidth(mbs: [*c]const u8) c_int;
pub extern fn ncstrwidth_valid(egcs: [*c]const u8, validbytes: [*c]c_int, validwidth: [*c]c_int) c_int;
pub extern fn notcurses_accountname() [*c]u8;
pub extern fn notcurses_hostname() [*c]u8;
pub extern fn notcurses_ucs32_to_utf8(ucs32: [*c]const u32, ucs32count: c_uint, resultbuf: [*c]u8, buflen: usize) c_int;
pub fn ncchannel_r(arg_channel: u32) callconv(.C) c_uint {
    var channel = arg_channel;
    return (channel & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 16);
}
pub fn ncchannel_g(arg_channel: u32) callconv(.C) c_uint {
    var channel = arg_channel;
    return (channel & @as(c_uint, 65280)) >> @intCast(@import("std").math.Log2Int(c_uint), 8);
}
pub fn ncchannel_b(arg_channel: u32) callconv(.C) c_uint {
    var channel = arg_channel;
    return channel & @as(c_uint, 255);
}
pub fn ncchannel_alpha(arg_channel: u32) callconv(.C) c_uint {
    var channel = arg_channel;
    return @bitCast(c_uint, @truncate(c_uint, @bitCast(c_ulonglong, @as(c_ulonglong, channel)) & @as(c_ulonglong, 805306368)));
}
pub fn ncchannel_rgb8(arg_channel: u32, noalias arg_r: [*c]c_uint, noalias arg_g: [*c]c_uint, noalias arg_b: [*c]c_uint) callconv(.C) c_uint {
    var channel = arg_channel;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    r.* = ncchannel_r(channel);
    g.* = ncchannel_g(channel);
    b.* = ncchannel_b(channel);
    return channel;
}
pub fn ncchannel_set_rgb8(arg_channel: [*c]u32, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var channel = arg_channel;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    if (((r >= @bitCast(c_uint, @as(c_int, 256))) or (g >= @bitCast(c_uint, @as(c_int, 256)))) or (b >= @bitCast(c_uint, @as(c_int, 256)))) {
        return -@as(c_int, 1);
    }
    var c: u32 = ((r << @intCast(@import("std").math.Log2Int(c_uint), 16)) | (g << @intCast(@import("std").math.Log2Int(c_uint), 8))) | b;
    channel.* = @bitCast(u32, @truncate(c_uint, ((@bitCast(c_ulonglong, @as(c_ulonglong, channel.*)) & ~@as(c_ulonglong, 16777215)) | @as(c_ulonglong, 1073741824)) | @bitCast(c_ulonglong, @as(c_ulonglong, c))));
    return 0;
}
pub fn ncchannel_set_rgb8_clipped(arg_channel: [*c]u32, arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) void {
    var channel = arg_channel;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    if (r >= @as(c_int, 256)) {
        r = 255;
    }
    if (g >= @as(c_int, 256)) {
        g = 255;
    }
    if (b >= @as(c_int, 256)) {
        b = 255;
    }
    if (r <= -@as(c_int, 1)) {
        r = 0;
    }
    if (g <= -@as(c_int, 1)) {
        g = 0;
    }
    if (b <= -@as(c_int, 1)) {
        b = 0;
    }
    var c: u32 = @bitCast(u32, ((r << @intCast(@import("std").math.Log2Int(c_int), 16)) | (g << @intCast(@import("std").math.Log2Int(c_int), 8))) | b);
    channel.* = @bitCast(u32, @truncate(c_uint, ((@bitCast(c_ulonglong, @as(c_ulonglong, channel.*)) & ~@as(c_ulonglong, 16777215)) | @as(c_ulonglong, 1073741824)) | @bitCast(c_ulonglong, @as(c_ulonglong, c))));
}
pub fn ncchannel_set(arg_channel: [*c]u32, arg_rgb: u32) callconv(.C) c_int {
    var channel = arg_channel;
    var rgb = arg_rgb;
    if (rgb > @as(c_uint, 16777215)) {
        return -@as(c_int, 1);
    }
    channel.* = @bitCast(u32, @truncate(c_uint, ((@bitCast(c_ulonglong, @as(c_ulonglong, channel.*)) & ~@as(c_ulonglong, 16777215)) | @as(c_ulonglong, 1073741824)) | @bitCast(c_ulonglong, @as(c_ulonglong, rgb))));
    return 0;
}
pub fn ncchannel_palindex(arg_channel: u32) callconv(.C) c_uint {
    var channel = arg_channel;
    return channel & @bitCast(c_uint, @as(c_int, 255));
}
pub fn ncchannel_set_alpha(arg_channel: [*c]u32, arg_alpha: c_uint) callconv(.C) c_int {
    var channel = arg_channel;
    var alpha = arg_alpha;
    if ((@bitCast(c_ulonglong, @as(c_ulonglong, alpha)) & ~@as(c_ulonglong, 805306368)) != 0) {
        return -@as(c_int, 1);
    }
    channel.* = @bitCast(u32, @truncate(c_uint, @bitCast(c_ulonglong, @as(c_ulonglong, alpha)) | (@bitCast(c_ulonglong, @as(c_ulonglong, channel.*)) & ~@as(c_ulonglong, 805306368))));
    if (@bitCast(c_ulonglong, @as(c_ulonglong, alpha)) != @as(c_ulonglong, 0)) {
        channel.* |= @bitCast(u32, @truncate(c_uint, @as(c_ulonglong, 1073741824)));
    }
    return 0;
}
pub fn ncchannel_set_palindex(arg_channel: [*c]u32, arg_idx: c_int) callconv(.C) c_int {
    var channel = arg_channel;
    var idx = arg_idx;
    if ((idx < @as(c_int, 0)) or (idx >= @as(c_int, 256))) {
        return -@as(c_int, 1);
    }
    channel.* |= @bitCast(u32, @truncate(c_uint, @as(c_ulonglong, 1073741824)));
    channel.* |= @bitCast(u32, @truncate(c_uint, @as(c_ulonglong, 134217728)));
    _ = ncchannel_set_alpha(channel, @bitCast(c_uint, @truncate(c_uint, @as(c_ulonglong, 0))));
    channel.* &= @bitCast(u32, @truncate(c_uint, @as(c_ulonglong, 4278190080)));
    channel.* |= @bitCast(c_uint, idx);
    return 0;
}
pub fn ncchannel_default_p(arg_channel: u32) callconv(.C) bool {
    var channel = arg_channel;
    return !((@bitCast(c_ulonglong, @as(c_ulonglong, channel)) & @as(c_ulonglong, 1073741824)) != 0);
}
pub fn ncchannel_palindex_p(arg_channel: u32) callconv(.C) bool {
    var channel = arg_channel;
    return !ncchannel_default_p(channel) and ((@bitCast(c_ulonglong, @as(c_ulonglong, channel)) & @as(c_ulonglong, 134217728)) != 0);
}
pub fn ncchannel_set_default(arg_channel: [*c]u32) callconv(.C) u32 {
    var channel = arg_channel;
    return blk: {
        const ref = &channel.*;
        ref.* &= @bitCast(u32, @truncate(c_uint, ~(@as(c_ulonglong, 1073741824) | @as(c_ulonglong, 805306368))));
        break :blk ref.*;
    };
}
pub fn ncchannels_bchannel(arg_channels: u64) callconv(.C) u32 {
    var channels = arg_channels;
    return @bitCast(u32, @truncate(c_uint, channels & @as(c_ulong, 4294967295)));
}
pub fn ncchannels_fchannel(arg_channels: u64) callconv(.C) u32 {
    var channels = arg_channels;
    return ncchannels_bchannel(channels >> @intCast(u6, 32));
}
pub fn ncchannels_reverse(arg_channels: u64) callconv(.C) u64 {
    var channels = arg_channels;
    const raw: u64 = (@bitCast(u64, @as(c_ulong, ncchannels_bchannel(channels))) << @intCast(u6, 32)) +% @bitCast(c_ulong, @as(c_ulong, ncchannels_fchannel(channels)));
    const statemask: u64 = @bitCast(u64, @truncate(c_ulong, ((@as(c_ulonglong, 9727775195120271360) | (@as(c_ulonglong, 805306368) << @intCast(@import("std").math.Log2Int(c_ulonglong), 32))) | @as(c_ulonglong, 805306368)) | (@as(c_ulonglong, 9727775195120271360) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 32))));
    var ret: u64 = raw & ~statemask;
    ret |= channels & statemask;
    return ret;
}
pub fn ncchannels_set_bchannel(arg_channels: [*c]u64, arg_channel: u32) callconv(.C) u64 {
    var channels = arg_channels;
    var channel = arg_channel;
    return blk: {
        const tmp = @bitCast(u64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 18446744069414584320)) | @bitCast(c_ulonglong, @as(c_ulonglong, channel))));
        channels.* = tmp;
        break :blk tmp;
    };
}
pub fn ncchannels_set_fchannel(arg_channels: [*c]u64, arg_channel: u32) callconv(.C) u64 {
    var channels = arg_channels;
    var channel = arg_channel;
    return blk: {
        const tmp = (channels.* & @as(c_ulong, 4294967295)) | (@bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32));
        channels.* = tmp;
        break :blk tmp;
    };
}
pub fn ncchannels_combine(arg_fchan: u32, arg_bchan: u32) callconv(.C) u64 {
    var fchan = arg_fchan;
    var bchan = arg_bchan;
    var channels: u64 = 0;
    _ = ncchannels_set_fchannel(&channels, fchan);
    _ = ncchannels_set_bchannel(&channels, bchan);
    return channels;
}
pub fn ncchannels_fg_palindex(arg_channels: u64) callconv(.C) c_uint {
    var channels = arg_channels;
    return ncchannel_palindex(ncchannels_fchannel(channels));
}
pub fn ncchannels_bg_palindex(arg_channels: u64) callconv(.C) c_uint {
    var channels = arg_channels;
    return ncchannel_palindex(ncchannels_bchannel(channels));
}
pub fn ncchannels_fg_rgb(arg_channels: u64) callconv(.C) u32 {
    var channels = arg_channels;
    return @bitCast(u32, @truncate(c_uint, @bitCast(c_ulonglong, @as(c_ulonglong, ncchannels_fchannel(channels))) & @as(c_ulonglong, 16777215)));
}
pub fn ncchannels_bg_rgb(arg_channels: u64) callconv(.C) u32 {
    var channels = arg_channels;
    return @bitCast(u32, @truncate(c_uint, @bitCast(c_ulonglong, @as(c_ulonglong, ncchannels_bchannel(channels))) & @as(c_ulonglong, 16777215)));
}
pub fn ncchannels_fg_alpha(arg_channels: u64) callconv(.C) c_uint {
    var channels = arg_channels;
    return ncchannel_alpha(ncchannels_fchannel(channels));
}
pub fn ncchannels_bg_alpha(arg_channels: u64) callconv(.C) c_uint {
    var channels = arg_channels;
    return ncchannel_alpha(ncchannels_bchannel(channels));
}
pub fn ncchannels_fg_rgb8(arg_channels: u64, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannel_rgb8(ncchannels_fchannel(channels), r, g, b);
}
pub fn ncchannels_bg_rgb8(arg_channels: u64, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannel_rgb8(ncchannels_bchannel(channels), r, g, b);
}
pub fn ncchannels_set_fg_rgb8(arg_channels: [*c]u64, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    var channel: u32 = ncchannels_fchannel(channels.*);
    if (ncchannel_set_rgb8(&channel, r, g, b) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
    return 0;
}
pub fn ncchannels_set_fg_rgb8_clipped(arg_channels: [*c]u64, arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) void {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    var channel: u32 = ncchannels_fchannel(channels.*);
    ncchannel_set_rgb8_clipped(&channel, r, g, b);
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
}
pub fn ncchannels_set_fg_alpha(arg_channels: [*c]u64, arg_alpha: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var alpha = arg_alpha;
    var channel: u32 = ncchannels_fchannel(channels.*);
    if (ncchannel_set_alpha(&channel, alpha) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
    return 0;
}
pub fn ncchannels_set_fg_palindex(arg_channels: [*c]u64, arg_idx: c_int) callconv(.C) c_int {
    var channels = arg_channels;
    var idx = arg_idx;
    var channel: u32 = ncchannels_fchannel(channels.*);
    if (ncchannel_set_palindex(&channel, idx) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
    return 0;
}
pub fn ncchannels_set_fg_rgb(arg_channels: [*c]u64, arg_rgb: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var rgb = arg_rgb;
    var channel: u32 = ncchannels_fchannel(channels.*);
    if (ncchannel_set(&channel, rgb) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
    return 0;
}
pub fn ncchannels_set_bg_rgb8(arg_channels: [*c]u64, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    var channel: u32 = ncchannels_bchannel(channels.*);
    if (ncchannel_set_rgb8(&channel, r, g, b) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    _ = ncchannels_set_bchannel(channels, channel);
    return 0;
}
pub fn ncchannels_set_bg_rgb8_clipped(arg_channels: [*c]u64, arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) void {
    var channels = arg_channels;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    var channel: u32 = ncchannels_bchannel(channels.*);
    ncchannel_set_rgb8_clipped(&channel, r, g, b);
    _ = ncchannels_set_bchannel(channels, channel);
}
pub fn ncchannels_set_bg_alpha(arg_channels: [*c]u64, arg_alpha: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var alpha = arg_alpha;
    if (@bitCast(c_ulonglong, @as(c_ulonglong, alpha)) == @as(c_ulonglong, 805306368)) {
        return -@as(c_int, 1);
    }
    var channel: u32 = ncchannels_bchannel(channels.*);
    if (ncchannel_set_alpha(&channel, alpha) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    _ = ncchannels_set_bchannel(channels, channel);
    return 0;
}
pub fn ncchannels_set_bg_palindex(arg_channels: [*c]u64, arg_idx: c_int) callconv(.C) c_int {
    var channels = arg_channels;
    var idx = arg_idx;
    var channel: u32 = ncchannels_bchannel(channels.*);
    if (ncchannel_set_palindex(&channel, idx) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    _ = ncchannels_set_bchannel(channels, channel);
    return 0;
}
pub fn ncchannels_set_bg_rgb(arg_channels: [*c]u64, arg_rgb: c_uint) callconv(.C) c_int {
    var channels = arg_channels;
    var rgb = arg_rgb;
    var channel: u32 = ncchannels_bchannel(channels.*);
    if (ncchannel_set(&channel, rgb) < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    _ = ncchannels_set_bchannel(channels, channel);
    return 0;
}
pub fn ncchannels_fg_default_p(arg_channels: u64) callconv(.C) bool {
    var channels = arg_channels;
    return ncchannel_default_p(ncchannels_fchannel(channels));
}
pub fn ncchannels_fg_palindex_p(arg_channels: u64) callconv(.C) bool {
    var channels = arg_channels;
    return ncchannel_palindex_p(ncchannels_fchannel(channels));
}
pub fn ncchannels_bg_default_p(arg_channels: u64) callconv(.C) bool {
    var channels = arg_channels;
    return ncchannel_default_p(ncchannels_bchannel(channels));
}
pub fn ncchannels_bg_palindex_p(arg_channels: u64) callconv(.C) bool {
    var channels = arg_channels;
    return ncchannel_palindex_p(ncchannels_bchannel(channels));
}
pub fn ncchannels_set_fg_default(arg_channels: [*c]u64) callconv(.C) u64 {
    var channels = arg_channels;
    var channel: u32 = ncchannels_fchannel(channels.*);
    _ = ncchannel_set_default(&channel);
    channels.* = @bitCast(u64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(u64, @as(c_ulong, channel)) << @intCast(u6, 32))) | (@bitCast(c_ulonglong, @as(c_ulonglong, channels.*)) & @as(c_ulonglong, 4294967295))));
    return channels.*;
}
pub fn ncchannels_set_bg_default(arg_channels: [*c]u64) callconv(.C) u64 {
    var channels = arg_channels;
    var channel: u32 = ncchannels_bchannel(channels.*);
    _ = ncchannel_set_default(&channel);
    _ = ncchannels_set_bchannel(channels, channel);
    return channels.*;
}
pub const struct_nccell = extern struct {
    gcluster: u32,
    gcluster_backstop: u8,
    width: u8,
    stylemask: u16,
    channels: u64,
};
pub const nccell = struct_nccell;
pub fn nccell_init(arg_c: [*c]nccell) callconv(.C) void {
    var c = arg_c;
    _ = memset(@ptrCast(?*c_void, c), @as(c_int, 0), @sizeOf(nccell));
}
pub extern fn nccell_load(n: ?*struct_ncplane, c: [*c]nccell, gcluster: [*c]const u8) c_int;
pub fn nccell_prime(arg_n: ?*struct_ncplane, arg_c: [*c]nccell, arg_gcluster: [*c]const u8, arg_stylemask: u32, arg_channels: u64) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    var gcluster = arg_gcluster;
    var stylemask = arg_stylemask;
    var channels = arg_channels;
    c.*.stylemask = @bitCast(u16, @truncate(c_ushort, stylemask));
    c.*.channels = channels;
    var ret: c_int = nccell_load(n, c, gcluster);
    return ret;
}
pub extern fn nccell_duplicate(n: ?*struct_ncplane, targ: [*c]nccell, c: [*c]const nccell) c_int;
pub extern fn nccell_release(n: ?*struct_ncplane, c: [*c]nccell) void;
pub fn nccell_set_styles(arg_c: [*c]nccell, arg_stylebits: c_uint) callconv(.C) void {
    var c = arg_c;
    var stylebits = arg_stylebits;
    c.*.stylemask = @bitCast(u16, @truncate(c_ushort, stylebits & @as(c_uint, 65535)));
}
pub fn nccell_styles(arg_c: [*c]const nccell) callconv(.C) c_uint {
    var c = arg_c;
    return @bitCast(c_uint, @as(c_uint, c.*.stylemask));
}
pub fn nccell_on_styles(arg_c: [*c]nccell, arg_stylebits: c_uint) callconv(.C) void {
    var c = arg_c;
    var stylebits = arg_stylebits;
    c.*.stylemask |= @bitCast(u16, @truncate(c_ushort, stylebits & @as(c_uint, 65535)));
}
pub fn nccell_off_styles(arg_c: [*c]nccell, arg_stylebits: c_uint) callconv(.C) void {
    var c = arg_c;
    var stylebits = arg_stylebits;
    c.*.stylemask &= @bitCast(u16, @truncate(c_ushort, ~(stylebits & @as(c_uint, 65535))));
}
pub fn nccell_set_fg_default(arg_c: [*c]nccell) callconv(.C) void {
    var c = arg_c;
    _ = ncchannels_set_fg_default(&c.*.channels);
}
pub fn nccell_set_bg_default(arg_c: [*c]nccell) callconv(.C) void {
    var c = arg_c;
    _ = ncchannels_set_bg_default(&c.*.channels);
}
pub fn nccell_set_fg_alpha(arg_c: [*c]nccell, arg_alpha: c_int) callconv(.C) c_int {
    var c = arg_c;
    var alpha = arg_alpha;
    return ncchannels_set_fg_alpha(&c.*.channels, @bitCast(c_uint, alpha));
}
pub fn nccell_set_bg_alpha(arg_c: [*c]nccell, arg_alpha: c_int) callconv(.C) c_int {
    var c = arg_c;
    var alpha = arg_alpha;
    return ncchannels_set_bg_alpha(&c.*.channels, @bitCast(c_uint, alpha));
}
pub fn nccell_double_wide_p(arg_c: [*c]const nccell) callconv(.C) bool {
    var c = arg_c;
    return @bitCast(c_int, @as(c_uint, c.*.width)) >= @as(c_int, 2);
}
pub fn nccell_wide_right_p(arg_c: [*c]const nccell) callconv(.C) bool {
    var c = arg_c;
    return (@as(c_int, @boolToInt(nccell_double_wide_p(c))) != 0) and (c.*.gcluster == @bitCast(c_uint, @as(c_int, 0)));
}
pub fn nccell_wide_left_p(arg_c: [*c]const nccell) callconv(.C) bool {
    var c = arg_c;
    return (@as(c_int, @boolToInt(nccell_double_wide_p(c))) != 0) and (c.*.gcluster != 0);
}
pub extern fn nccell_extended_gcluster(n: ?*const struct_ncplane, c: [*c]const nccell) [*c]const u8;
pub fn nccell_cols(arg_c: [*c]const nccell) callconv(.C) c_int {
    var c = arg_c;
    return if (@bitCast(c_int, @as(c_uint, c.*.width)) != 0) @bitCast(c_int, @as(c_uint, c.*.width)) else @as(c_int, 1);
}
pub fn nccell_strdup(arg_n: ?*const struct_ncplane, arg_c: [*c]const nccell) callconv(.C) [*c]u8 {
    var n = arg_n;
    var c = arg_c;
    return strdup(nccell_extended_gcluster(n, c));
}
pub fn nccell_extract(arg_n: ?*const struct_ncplane, arg_c: [*c]const nccell, arg_stylemask: [*c]u16, arg_channels: [*c]u64) callconv(.C) [*c]u8 {
    var n = arg_n;
    var c = arg_c;
    var stylemask = arg_stylemask;
    var channels = arg_channels;
    if (stylemask != null) {
        stylemask.* = c.*.stylemask;
    }
    if (channels != null) {
        channels.* = c.*.channels;
    }
    return nccell_strdup(n, c);
}
pub fn nccellcmp(arg_n1: ?*const struct_ncplane, noalias arg_c1: [*c]const nccell, arg_n2: ?*const struct_ncplane, noalias arg_c2: [*c]const nccell) callconv(.C) bool {
    var n1 = arg_n1;
    var c1 = arg_c1;
    var n2 = arg_n2;
    var c2 = arg_c2;
    if (@bitCast(c_int, @as(c_uint, c1.*.stylemask)) != @bitCast(c_int, @as(c_uint, c2.*.stylemask))) {
        return @as(c_int, 1) != 0;
    }
    if (c1.*.channels != c2.*.channels) {
        return @as(c_int, 1) != 0;
    }
    return strcmp(nccell_extended_gcluster(n1, c1), nccell_extended_gcluster(n2, c2)) != 0;
}
pub fn nccell_load_char(arg_n: ?*struct_ncplane, arg_c: [*c]nccell, arg_ch: u8) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    var ch = arg_ch;
    var gcluster: [2]u8 = undefined;
    gcluster[@intCast(c_uint, @as(c_int, 0))] = ch;
    gcluster[@intCast(c_uint, @as(c_int, 1))] = '\x00';
    return nccell_load(n, c, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &gcluster)));
}
pub fn nccell_load_egc32(arg_n: ?*struct_ncplane, arg_c: [*c]nccell, arg_egc: u32) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    var egc = arg_egc;
    var gcluster: [5]u8 = undefined;
    egc = __bswap_32(__bswap_32(egc));
    _ = memcpy(@ptrCast(?*c_void, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &gcluster))), @ptrCast(?*const c_void, &egc), @sizeOf(u32));
    gcluster[@intCast(c_uint, @as(c_int, 4))] = '\x00';
    return nccell_load(n, c, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &gcluster)));
}
pub const NCLOGLEVEL_SILENT: c_int = -1;
pub const NCLOGLEVEL_PANIC: c_int = 0;
pub const NCLOGLEVEL_FATAL: c_int = 1;
pub const NCLOGLEVEL_ERROR: c_int = 2;
pub const NCLOGLEVEL_WARNING: c_int = 3;
pub const NCLOGLEVEL_INFO: c_int = 4;
pub const NCLOGLEVEL_VERBOSE: c_int = 5;
pub const NCLOGLEVEL_DEBUG: c_int = 6;
pub const NCLOGLEVEL_TRACE: c_int = 7;
pub const ncloglevel_e = c_int;
pub const struct_notcurses_options = extern struct {
    termtype: [*c]const u8,
    renderfp: [*c]FILE,
    loglevel: ncloglevel_e,
    margin_t: c_int,
    margin_r: c_int,
    margin_b: c_int,
    margin_l: c_int,
    flags: u64,
};
pub const notcurses_options = struct_notcurses_options;
pub extern fn notcurses_lex_margins(op: [*c]const u8, opts: [*c]notcurses_options) c_int;
pub extern fn notcurses_lex_blitter(op: [*c]const u8, blitter: [*c]ncblitter_e) c_int;
pub extern fn notcurses_str_blitter(blitter: ncblitter_e) [*c]const u8;
pub extern fn notcurses_lex_scalemode(op: [*c]const u8, scalemode: [*c]ncscale_e) c_int;
pub extern fn notcurses_str_scalemode(scalemode: ncscale_e) [*c]const u8;
pub extern fn notcurses_init(opts: [*c]const notcurses_options, fp: [*c]FILE) ?*struct_notcurses;
pub extern fn notcurses_core_init(opts: [*c]const notcurses_options, fp: [*c]FILE) ?*struct_notcurses;
pub extern fn notcurses_stop(nc: ?*struct_notcurses) c_int;
pub extern fn notcurses_enter_alternate_screen(nc: ?*struct_notcurses) c_int;
pub extern fn notcurses_leave_alternate_screen(nc: ?*struct_notcurses) c_int;
pub extern fn ncpile_top(n: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncpile_bottom(n: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncpile_render(n: ?*struct_ncplane) c_int;
pub extern fn ncpile_rasterize(n: ?*struct_ncplane) c_int;
pub extern fn notcurses_render(nc: ?*struct_notcurses) c_int;
pub extern fn ncpile_render_to_buffer(p: ?*struct_ncplane, buf: [*c][*c]u8, buflen: [*c]usize) c_int;
pub extern fn ncpile_render_to_file(p: ?*struct_ncplane, fp: [*c]FILE) c_int;
pub extern fn notcurses_top(n: ?*struct_notcurses) ?*struct_ncplane;
pub extern fn notcurses_bottom(n: ?*struct_notcurses) ?*struct_ncplane;
pub extern fn notcurses_drop_planes(nc: ?*struct_notcurses) void;
pub fn nckey_supppuab_p(arg_w: u32) callconv(.C) bool {
    var w = arg_w;
    return (w >= @bitCast(c_uint, @as(c_int, 1048576))) and (w <= @bitCast(c_uint, @as(c_int, 1114109)));
}
pub fn nckey_mouse_p(arg_r: u32) callconv(.C) bool {
    var r = arg_r;
    return (r >= @bitCast(c_uint, @as(c_int, 201) + @as(c_int, 1048576))) and (r <= @bitCast(c_uint, @as(c_int, 211) + @as(c_int, 1048576)));
}
pub const NCTYPE_UNKNOWN: c_int = 0;
pub const NCTYPE_PRESS: c_int = 1;
pub const NCTYPE_REPEAT: c_int = 2;
pub const NCTYPE_RELEASE: c_int = 3;
const enum_unnamed_37 = c_uint;
pub const struct_ncinput = extern struct {
    id: u32,
    y: c_int,
    x: c_int,
    alt: bool,
    shift: bool,
    ctrl: bool,
    evtype: enum_unnamed_37,
};
pub const ncinput = struct_ncinput;
pub fn ncinput_equal_p(arg_n1: [*c]const ncinput, arg_n2: [*c]const ncinput) callconv(.C) bool {
    var n1 = arg_n1;
    var n2 = arg_n2;
    if (n1.*.id != n2.*.id) {
        return @as(c_int, 0) != 0;
    }
    if ((n1.*.y != n2.*.y) or (n1.*.x != n2.*.x)) {
        return @as(c_int, 0) != 0;
    }
    if (((@as(c_int, @boolToInt(n1.*.alt)) != @as(c_int, @boolToInt(n2.*.alt))) or (@as(c_int, @boolToInt(n1.*.shift)) != @as(c_int, @boolToInt(n2.*.shift)))) or (@as(c_int, @boolToInt(n1.*.ctrl)) != @as(c_int, @boolToInt(n2.*.ctrl)))) {
        return @as(c_int, 0) != 0;
    }
    if (n1.*.evtype != n2.*.evtype) {
        return @as(c_int, 0) != 0;
    }
    return @as(c_int, 1) != 0;
}
pub extern fn notcurses_get(n: ?*struct_notcurses, ts: [*c]const struct_timespec, ni: [*c]ncinput) u32;
pub extern fn notcurses_getvec(n: ?*struct_notcurses, ts: [*c]const struct_timespec, ni: [*c]ncinput, vcount: c_int) c_int;
pub extern fn notcurses_inputready_fd(n: ?*struct_notcurses) c_int;
pub fn notcurses_getc_nblock(arg_n: ?*struct_notcurses, arg_ni: [*c]ncinput) callconv(.C) u32 {
    var n = arg_n;
    var ni = arg_ni;
    var ts: struct_timespec = struct_timespec{
        .tv_sec = @bitCast(__time_t, @as(c_long, @as(c_int, 0))),
        .tv_nsec = @bitCast(__syscall_slong_t, @as(c_long, @as(c_int, 0))),
    };
    return notcurses_get(n, &ts, ni);
}
pub fn notcurses_getc_blocking(arg_n: ?*struct_notcurses, arg_ni: [*c]ncinput) callconv(.C) u32 {
    var n = arg_n;
    var ni = arg_ni;
    return notcurses_get(n, null, ni);
}
pub fn ncinput_nomod_p(arg_ni: [*c]const ncinput) callconv(.C) bool {
    var ni = arg_ni;
    return (!ni.*.alt and !ni.*.ctrl) and !ni.*.shift;
}
pub extern fn notcurses_mouse_enable(n: ?*struct_notcurses) c_int;
pub extern fn notcurses_mouse_disable(n: ?*struct_notcurses) c_int;
pub extern fn notcurses_linesigs_disable(n: ?*struct_notcurses) c_int;
pub extern fn notcurses_linesigs_enable(n: ?*struct_notcurses) c_int;
pub extern fn notcurses_refresh(n: ?*struct_notcurses, noalias y: [*c]c_int, noalias x: [*c]c_int) c_int;
pub extern fn ncplane_notcurses(n: ?*const struct_ncplane) ?*struct_notcurses;
pub extern fn ncplane_notcurses_const(n: ?*const struct_ncplane) ?*const struct_notcurses;
pub extern fn ncplane_dim_yx(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub extern fn notcurses_stdplane(nc: ?*struct_notcurses) ?*struct_ncplane;
pub extern fn notcurses_stdplane_const(nc: ?*const struct_notcurses) ?*const struct_ncplane;
pub fn notcurses_stddim_yx(arg_nc: ?*struct_notcurses, noalias arg_y: [*c]c_int, noalias arg_x: [*c]c_int) callconv(.C) ?*struct_ncplane {
    var nc = arg_nc;
    var y = arg_y;
    var x = arg_x;
    var s: ?*struct_ncplane = notcurses_stdplane(nc);
    ncplane_dim_yx(s, y, x);
    return s;
}
pub fn notcurses_stddim_yx_const(arg_nc: ?*const struct_notcurses, noalias arg_y: [*c]c_int, noalias arg_x: [*c]c_int) callconv(.C) ?*const struct_ncplane {
    var nc = arg_nc;
    var y = arg_y;
    var x = arg_x;
    var s: ?*const struct_ncplane = notcurses_stdplane_const(nc);
    ncplane_dim_yx(s, y, x);
    return s;
}
pub fn ncplane_dim_y(arg_n: ?*const struct_ncplane) callconv(.C) c_int {
    var n = arg_n;
    var dimy: c_int = undefined;
    ncplane_dim_yx(n, &dimy, null);
    return dimy;
}
pub fn ncplane_dim_x(arg_n: ?*const struct_ncplane) callconv(.C) c_int {
    var n = arg_n;
    var dimx: c_int = undefined;
    ncplane_dim_yx(n, null, &dimx);
    return dimx;
}
pub extern fn ncplane_pixelgeom(n: ?*const struct_ncplane, noalias pxy: [*c]c_int, noalias pxx: [*c]c_int, noalias celldimy: [*c]c_int, noalias celldimx: [*c]c_int, noalias maxbmapy: [*c]c_int, noalias maxbmapx: [*c]c_int) void;
pub fn notcurses_term_dim_yx(arg_n: ?*const struct_notcurses, noalias arg_rows: [*c]c_int, noalias arg_cols: [*c]c_int) callconv(.C) void {
    var n = arg_n;
    var rows = arg_rows;
    var cols = arg_cols;
    ncplane_dim_yx(notcurses_stdplane_const(n), rows, cols);
}
pub extern fn notcurses_at_yx(nc: ?*struct_notcurses, yoff: c_int, xoff: c_int, stylemask: [*c]u16, channels: [*c]u64) [*c]u8;
pub const struct_ncplane_options = extern struct {
    y: c_int,
    x: c_int,
    rows: c_int,
    cols: c_int,
    userptr: ?*c_void,
    name: [*c]const u8,
    resizecb: ?fn (?*struct_ncplane) callconv(.C) c_int,
    flags: u64,
    margin_b: c_int,
    margin_r: c_int,
};
pub const ncplane_options = struct_ncplane_options;
pub extern fn ncplane_create(n: ?*struct_ncplane, nopts: [*c]const ncplane_options) ?*struct_ncplane;
pub extern fn ncpile_create(nc: ?*struct_notcurses, nopts: [*c]const ncplane_options) ?*struct_ncplane;
pub extern fn ncplane_resize_maximize(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_resize_marginalized(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_resize_realign(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_set_resizecb(n: ?*struct_ncplane, resizecb: ?fn (?*struct_ncplane) callconv(.C) c_int) void;
pub extern fn ncplane_resizecb(n: ?*const struct_ncplane) ?fn (?*struct_ncplane) callconv(.C) c_int;
pub extern fn ncplane_set_name(n: ?*struct_ncplane, name: [*c]const u8) c_int;
pub extern fn ncplane_name(n: ?*const struct_ncplane) [*c]u8;
pub extern fn ncplane_reparent(n: ?*struct_ncplane, newparent: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncplane_reparent_family(n: ?*struct_ncplane, newparent: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncplane_dup(n: ?*const struct_ncplane, @"opaque": ?*c_void) ?*struct_ncplane;
pub extern fn ncplane_translate(src: ?*const struct_ncplane, dst: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub extern fn ncplane_translate_abs(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) bool;
pub extern fn ncplane_set_scrolling(n: ?*struct_ncplane, scrollp: bool) bool;
pub extern fn ncplane_scrolling_p(n: ?*const struct_ncplane) bool;
pub const struct_ncpalette = extern struct {
    chans: [256]u32,
};
pub const ncpalette = struct_ncpalette;
pub extern fn ncpalette_new(nc: ?*struct_notcurses) [*c]ncpalette;
pub extern fn ncpalette_use(nc: ?*struct_notcurses, p: [*c]const ncpalette) c_int;
pub fn ncpalette_set_rgb8(arg_p: [*c]ncpalette, arg_idx: c_int, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var p = arg_p;
    var idx = arg_idx;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    if ((idx < @as(c_int, 0)) or (@bitCast(usize, @as(c_long, idx)) > (@sizeOf([256]u32) / @sizeOf(u32)))) {
        return -@as(c_int, 1);
    }
    return ncchannel_set_rgb8(&p.*.chans[@intCast(c_uint, idx)], r, g, b);
}
pub fn ncpalette_set(arg_p: [*c]ncpalette, arg_idx: c_int, arg_rgb: c_uint) callconv(.C) c_int {
    var p = arg_p;
    var idx = arg_idx;
    var rgb = arg_rgb;
    if ((idx < @as(c_int, 0)) or (@bitCast(usize, @as(c_long, idx)) > (@sizeOf([256]u32) / @sizeOf(u32)))) {
        return -@as(c_int, 1);
    }
    return ncchannel_set(&p.*.chans[@intCast(c_uint, idx)], rgb);
}
pub fn ncpalette_get_rgb8(arg_p: [*c]const ncpalette, arg_idx: c_int, noalias arg_r: [*c]c_uint, noalias arg_g: [*c]c_uint, noalias arg_b: [*c]c_uint) callconv(.C) c_int {
    var p = arg_p;
    var idx = arg_idx;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    if ((idx < @as(c_int, 0)) or (@bitCast(usize, @as(c_long, idx)) > (@sizeOf([256]u32) / @sizeOf(u32)))) {
        return -@as(c_int, 1);
    }
    return @bitCast(c_int, ncchannel_rgb8(p.*.chans[@intCast(c_uint, idx)], r, g, b));
}
pub extern fn ncpalette_free(p: [*c]ncpalette) void;
pub const struct_nccapabilities = extern struct {
    colors: c_uint,
    utf8: bool,
    rgb: bool,
    can_change_colors: bool,
    halfblocks: bool,
    quadrants: bool,
    sextants: bool,
    braille: bool,
};
pub const nccapabilities = struct_nccapabilities;
pub extern fn notcurses_supported_styles(nc: ?*const struct_notcurses) c_uint;
pub extern fn notcurses_palette_size(nc: ?*const struct_notcurses) c_uint;
pub extern fn notcurses_detected_terminal(nc: ?*const struct_notcurses) [*c]u8;
pub extern fn notcurses_cantruecolor(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canfade(nc: ?*const struct_notcurses) bool;
pub fn nccapability_canchangecolor(arg_caps: [*c]const nccapabilities) callconv(.C) bool {
    var caps = arg_caps;
    if (!caps.*.can_change_colors) {
        return @as(c_int, 0) != 0;
    }
    var p: [*c]ncpalette = undefined;
    _ = p;
    if (@bitCast(c_ulong, @as(c_ulong, caps.*.colors)) < (@sizeOf([256]u32) / @sizeOf(u32))) {
        return @as(c_int, 0) != 0;
    }
    return @as(c_int, 1) != 0;
}
pub extern fn notcurses_canchangecolor(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canopen_images(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canopen_videos(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canutf8(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canhalfblock(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canquadrant(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_cansextant(nc: ?*const struct_notcurses) bool;
pub extern fn notcurses_canbraille(nc: ?*const struct_notcurses) bool;
pub const NCPIXEL_NONE: c_int = 0;
pub const NCPIXEL_SIXEL: c_int = 1;
pub const NCPIXEL_LINUXFB: c_int = 2;
pub const NCPIXEL_ITERM2: c_int = 3;
pub const NCPIXEL_KITTY_STATIC: c_int = 4;
pub const NCPIXEL_KITTY_ANIMATED: c_int = 5;
pub const NCPIXEL_KITTY_SELFREF: c_int = 6;
pub const ncpixelimpl_e = c_uint;
pub extern fn notcurses_check_pixel_support(nc: ?*const struct_notcurses) ncpixelimpl_e;
pub const struct_ncstats = extern struct {
    renders: u64,
    writeouts: u64,
    failed_renders: u64,
    failed_writeouts: u64,
    render_bytes: u64,
    render_max_bytes: i64,
    render_min_bytes: i64,
    render_ns: u64,
    render_max_ns: i64,
    render_min_ns: i64,
    writeout_ns: u64,
    writeout_max_ns: i64,
    writeout_min_ns: i64,
    cellelisions: u64,
    cellemissions: u64,
    fgelisions: u64,
    fgemissions: u64,
    bgelisions: u64,
    bgemissions: u64,
    defaultelisions: u64,
    defaultemissions: u64,
    refreshes: u64,
    appsync_updates: u64,
    fbbytes: u64,
    planes: c_uint,
    raster_ns: u64,
    raster_max_ns: i64,
    raster_min_ns: i64,
    sprixelemissions: u64,
    sprixelelisions: u64,
    sprixelbytes: u64,
    input_errors: u64,
    input_events: u64,
};
pub const ncstats = struct_ncstats;
pub extern fn notcurses_stats_alloc(nc: ?*const struct_notcurses) [*c]ncstats;
pub extern fn notcurses_stats(nc: ?*struct_notcurses, stats: [*c]ncstats) void;
pub extern fn notcurses_stats_reset(nc: ?*struct_notcurses, stats: [*c]ncstats) void;
pub extern fn ncplane_resize(n: ?*struct_ncplane, keepy: c_int, keepx: c_int, keepleny: c_int, keeplenx: c_int, yoff: c_int, xoff: c_int, ylen: c_int, xlen: c_int) c_int;
pub fn ncplane_resize_simple(arg_n: ?*struct_ncplane, arg_ylen: c_int, arg_xlen: c_int) callconv(.C) c_int {
    var n = arg_n;
    var ylen = arg_ylen;
    var xlen = arg_xlen;
    if ((ylen < @as(c_int, 0)) or (xlen < @as(c_int, 0))) {
        return -@as(c_int, 1);
    }
    var oldy: c_int = undefined;
    var oldx: c_int = undefined;
    ncplane_dim_yx(n, &oldy, &oldx);
    var keepleny: c_int = if (oldy > ylen) ylen else oldy;
    var keeplenx: c_int = if (oldx > xlen) xlen else oldx;
    return ncplane_resize(n, @as(c_int, 0), @as(c_int, 0), keepleny, keeplenx, @as(c_int, 0), @as(c_int, 0), ylen, xlen);
}
pub extern fn ncplane_destroy(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_set_base_cell(n: ?*struct_ncplane, c: [*c]const nccell) c_int;
pub extern fn ncplane_set_base(n: ?*struct_ncplane, egc: [*c]const u8, stylemask: u32, channels: u64) c_int;
pub extern fn ncplane_base(n: ?*struct_ncplane, c: [*c]nccell) c_int;
pub extern fn ncplane_yx(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub extern fn ncplane_y(n: ?*const struct_ncplane) c_int;
pub extern fn ncplane_x(n: ?*const struct_ncplane) c_int;
pub extern fn ncplane_move_yx(n: ?*struct_ncplane, y: c_int, x: c_int) c_int;
pub fn ncplane_moverel(arg_n: ?*struct_ncplane, arg_y: c_int, arg_x: c_int) callconv(.C) c_int {
    var n = arg_n;
    var y = arg_y;
    var x = arg_x;
    var oy: c_int = undefined;
    var ox: c_int = undefined;
    ncplane_yx(n, &oy, &ox);
    return ncplane_move_yx(n, oy + y, ox + x);
}
pub extern fn ncplane_abs_yx(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub extern fn ncplane_abs_y(n: ?*const struct_ncplane) c_int;
pub extern fn ncplane_abs_x(n: ?*const struct_ncplane) c_int;
pub extern fn ncplane_parent(n: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncplane_parent_const(n: ?*const struct_ncplane) ?*const struct_ncplane;
pub fn ncplane_descendant_p(arg_n: ?*const struct_ncplane, arg_ancestor: ?*const struct_ncplane) callconv(.C) c_int {
    var n = arg_n;
    var ancestor = arg_ancestor;
    {
        var parent: ?*const struct_ncplane = ncplane_parent_const(n);
        while (parent != ancestor) : (parent = ncplane_parent_const(parent)) {
            if (ncplane_parent_const(parent) == parent) {
                return 0;
            }
        }
    }
    return 1;
}
pub extern fn ncplane_move_above(noalias n: ?*struct_ncplane, noalias above: ?*struct_ncplane) c_int;
pub extern fn ncplane_move_below(noalias n: ?*struct_ncplane, noalias below: ?*struct_ncplane) c_int;
pub extern fn ncplane_move_top(n: ?*struct_ncplane) void;
pub extern fn ncplane_move_bottom(n: ?*struct_ncplane) void;
pub extern fn ncplane_move_family_above(n: ?*struct_ncplane, targ: ?*struct_ncplane) c_int;
pub extern fn ncplane_move_family_below(n: ?*struct_ncplane, targ: ?*struct_ncplane) c_int;
pub fn ncplane_move_family_top(arg_n: ?*struct_ncplane) callconv(.C) void {
    var n = arg_n;
    _ = ncplane_move_family_below(n, null);
}
pub fn ncplane_move_family_bottom(arg_n: ?*struct_ncplane) callconv(.C) void {
    var n = arg_n;
    _ = ncplane_move_family_above(n, null);
}
pub extern fn ncplane_below(n: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncplane_above(n: ?*struct_ncplane) ?*struct_ncplane;
pub extern fn ncplane_scrollup(n: ?*struct_ncplane, r: c_int) c_int;
pub extern fn ncplane_scrollup_child(n: ?*struct_ncplane, child: ?*const struct_ncplane) c_int;
pub extern fn ncplane_rotate_cw(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_rotate_ccw(n: ?*struct_ncplane) c_int;
pub extern fn ncplane_at_cursor(n: ?*struct_ncplane, stylemask: [*c]u16, channels: [*c]u64) [*c]u8;
pub extern fn ncplane_at_cursor_cell(n: ?*struct_ncplane, c: [*c]nccell) c_int;
pub extern fn ncplane_at_yx(n: ?*const struct_ncplane, y: c_int, x: c_int, stylemask: [*c]u16, channels: [*c]u64) [*c]u8;
pub extern fn ncplane_at_yx_cell(n: ?*struct_ncplane, y: c_int, x: c_int, c: [*c]nccell) c_int;
pub extern fn ncplane_contents(n: ?*struct_ncplane, begy: c_int, begx: c_int, leny: c_int, lenx: c_int) [*c]u8;
pub extern fn ncplane_set_userptr(n: ?*struct_ncplane, @"opaque": ?*c_void) ?*c_void;
pub extern fn ncplane_userptr(n: ?*struct_ncplane) ?*c_void;
pub extern fn ncplane_center_abs(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub fn notcurses_align(arg_availu: c_int, arg_align: ncalign_e, arg_u: c_int) callconv(.C) c_int {
    var availu = arg_availu;
    var @"align" = arg_align;
    var u = arg_u;
    if ((@"align" == @bitCast(c_uint, NCALIGN_LEFT)) or (@"align" == @bitCast(c_uint, NCALIGN_LEFT))) {
        return 0;
    }
    if (@"align" == @bitCast(c_uint, NCALIGN_CENTER)) {
        return @divTrunc(availu - u, @as(c_int, 2));
    }
    if ((@"align" == @bitCast(c_uint, NCALIGN_RIGHT)) or (@"align" == @bitCast(c_uint, NCALIGN_RIGHT))) {
        return availu - u;
    }
    return -@as(c_int, 2147483647);
}
pub fn ncplane_halign(arg_n: ?*const struct_ncplane, arg_align: ncalign_e, arg_c: c_int) callconv(.C) c_int {
    var n = arg_n;
    var @"align" = arg_align;
    var c = arg_c;
    return notcurses_align(ncplane_dim_x(n), @"align", c);
}
pub fn ncplane_valign(arg_n: ?*const struct_ncplane, arg_align: ncalign_e, arg_r: c_int) callconv(.C) c_int {
    var n = arg_n;
    var @"align" = arg_align;
    var r = arg_r;
    return notcurses_align(ncplane_dim_y(n), @"align", r);
}
pub extern fn ncplane_cursor_move_yx(n: ?*struct_ncplane, y: c_int, x: c_int) c_int;
pub extern fn ncplane_cursor_move_rel(n: ?*struct_ncplane, y: c_int, x: c_int) c_int;
pub extern fn ncplane_home(n: ?*struct_ncplane) void;
pub extern fn ncplane_cursor_yx(n: ?*const struct_ncplane, noalias y: [*c]c_int, noalias x: [*c]c_int) void;
pub extern fn ncplane_channels(n: ?*const struct_ncplane) u64;
pub extern fn ncplane_styles(n: ?*const struct_ncplane) u16;
pub extern fn ncplane_putc_yx(n: ?*struct_ncplane, y: c_int, x: c_int, c: [*c]const nccell) c_int;
pub fn ncplane_putc(arg_n: ?*struct_ncplane, arg_c: [*c]const nccell) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    return ncplane_putc_yx(n, -@as(c_int, 1), -@as(c_int, 1), c);
}
pub fn ncplane_putchar_yx(arg_n: ?*struct_ncplane, arg_y: c_int, arg_x: c_int, arg_c: u8) callconv(.C) c_int {
    var n = arg_n;
    var y = arg_y;
    var x = arg_x;
    var c = arg_c;
    var ce: nccell = nccell{
        .gcluster = __bswap_32(__bswap_32(@bitCast(u32, @as(c_uint, c)))),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, if ((wcwidth(@bitCast(u32, @as(c_uint, c))) < @as(c_int, 0)) or !(@bitCast(u32, @as(c_uint, c)) != 0)) @as(c_int, 1) else wcwidth(@bitCast(u32, @as(c_uint, c))))),
        .stylemask = ncplane_styles(n),
        .channels = ncplane_channels(n),
    };
    return ncplane_putc_yx(n, y, x, &ce);
}
pub fn ncplane_putchar(arg_n: ?*struct_ncplane, arg_c: u8) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    return ncplane_putchar_yx(n, -@as(c_int, 1), -@as(c_int, 1), c);
}
pub extern fn ncplane_putchar_stained(n: ?*struct_ncplane, c: u8) c_int;
pub extern fn ncplane_putegc_yx(n: ?*struct_ncplane, y: c_int, x: c_int, gclust: [*c]const u8, sbytes: [*c]c_int) c_int;
pub fn ncplane_putegc(arg_n: ?*struct_ncplane, arg_gclust: [*c]const u8, arg_sbytes: [*c]c_int) callconv(.C) c_int {
    var n = arg_n;
    var gclust = arg_gclust;
    var sbytes = arg_sbytes;
    return ncplane_putegc_yx(n, -@as(c_int, 1), -@as(c_int, 1), gclust, sbytes);
}
pub extern fn ncplane_putegc_stained(n: ?*struct_ncplane, gclust: [*c]const u8, sbytes: [*c]c_int) c_int;
pub fn ncwcsrtombs(arg_src: [*c]const wchar_t) callconv(.C) [*c]u8 {
    var src = arg_src;
    var ps: mbstate_t = undefined;
    _ = memset(@ptrCast(?*c_void, &ps), @as(c_int, 0), @sizeOf(mbstate_t));
    var mbytes: usize = wcsrtombs(null, &src, @bitCast(usize, @as(c_long, @as(c_int, 0))), &ps);
    if (mbytes == @bitCast(usize, @as(c_long, -@as(c_int, 1)))) {
        return null;
    }
    mbytes +%= 1;
    var mbstr: [*c]u8 = @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), malloc(mbytes)));
    if (mbstr == @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), @intToPtr(?*c_void, @as(c_int, 0))))) {
        return null;
    }
    var s: usize = wcsrtombs(mbstr, &src, mbytes, &ps);
    if (s == @bitCast(usize, @as(c_long, -@as(c_int, 1)))) {
        free(@ptrCast(?*c_void, mbstr));
        return null;
    }
    return mbstr;
}
pub fn ncplane_putwegc(arg_n: ?*struct_ncplane, arg_gclust: [*c]const wchar_t, arg_sbytes: [*c]c_int) callconv(.C) c_int {
    var n = arg_n;
    var gclust = arg_gclust;
    var sbytes = arg_sbytes;
    var mbstr: [*c]u8 = ncwcsrtombs(gclust);
    if (mbstr == @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), @intToPtr(?*c_void, @as(c_int, 0))))) {
        return -@as(c_int, 1);
    }
    var ret: c_int = ncplane_putegc(n, mbstr, sbytes);
    free(@ptrCast(?*c_void, mbstr));
    return ret;
}
pub fn ncplane_putwegc_yx(arg_n: ?*struct_ncplane, arg_y: c_int, arg_x: c_int, arg_gclust: [*c]const wchar_t, arg_sbytes: [*c]c_int) callconv(.C) c_int {
    var n = arg_n;
    var y = arg_y;
    var x = arg_x;
    var gclust = arg_gclust;
    var sbytes = arg_sbytes;
    if (ncplane_cursor_move_yx(n, y, x) != 0) {
        return -@as(c_int, 1);
    }
    return ncplane_putwegc(n, gclust, sbytes);
}
pub extern fn ncplane_putwegc_stained(n: ?*struct_ncplane, gclust: [*c]const wchar_t, sbytes: [*c]c_int) c_int;
pub extern fn ncplane_putstr_yx(n: ?*struct_ncplane, y: c_int, x: c_int, gclusters: [*c]const u8) c_int;
pub fn ncplane_putstr(arg_n: ?*struct_ncplane, arg_gclustarr: [*c]const u8) callconv(.C) c_int {
    var n = arg_n;
    var gclustarr = arg_gclustarr;
    return ncplane_putstr_yx(n, -@as(c_int, 1), -@as(c_int, 1), gclustarr);
}
pub extern fn ncplane_putstr_aligned(n: ?*struct_ncplane, y: c_int, @"align": ncalign_e, s: [*c]const u8) c_int;
pub extern fn ncplane_putstr_stained(n: ?*struct_ncplane, s: [*c]const u8) c_int;
pub extern fn ncplane_putnstr_yx(n: ?*struct_ncplane, y: c_int, x: c_int, s: usize, gclusters: [*c]const u8) c_int;
pub fn ncplane_putnstr(arg_n: ?*struct_ncplane, arg_s: usize, arg_gclustarr: [*c]const u8) callconv(.C) c_int {
    var n = arg_n;
    var s = arg_s;
    var gclustarr = arg_gclustarr;
    return ncplane_putnstr_yx(n, -@as(c_int, 1), -@as(c_int, 1), s, gclustarr);
}
pub extern fn ncplane_putnstr_aligned(n: ?*struct_ncplane, y: c_int, @"align": ncalign_e, s: usize, gclustarr: [*c]const u8) c_int;
pub fn ncplane_putwstr_yx(arg_n: ?*struct_ncplane, arg_y: c_int, arg_x: c_int, arg_gclustarr: [*c]const wchar_t) callconv(.C) c_int {
    var n = arg_n;
    var y = arg_y;
    var x = arg_x;
    var gclustarr = arg_gclustarr;
    const mbytes: usize = (wcslen(gclustarr) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 4)))) +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
    var mbstr: [*c]u8 = @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), malloc(mbytes)));
    if (mbstr == @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), @intToPtr(?*c_void, @as(c_int, 0))))) {
        return -@as(c_int, 1);
    }
    var ps: mbstate_t = undefined;
    _ = memset(@ptrCast(?*c_void, &ps), @as(c_int, 0), @sizeOf(mbstate_t));
    var gend: [*c][*c]const wchar_t = &gclustarr;
    var s: usize = wcsrtombs(mbstr, gend, mbytes, &ps);
    if (s == @bitCast(usize, @as(c_long, -@as(c_int, 1)))) {
        free(@ptrCast(?*c_void, mbstr));
        return -@as(c_int, 1);
    }
    var ret: c_int = ncplane_putstr_yx(n, y, x, mbstr);
    free(@ptrCast(?*c_void, mbstr));
    return ret;
}
pub fn ncplane_putwstr_aligned(arg_n: ?*struct_ncplane, arg_y: c_int, arg_align: ncalign_e, arg_gclustarr: [*c]const wchar_t) callconv(.C) c_int {
    var n = arg_n;
    var y = arg_y;
    var @"align" = arg_align;
    var gclustarr = arg_gclustarr;
    var width: c_int = wcswidth(gclustarr, @as(c_int, 2147483647));
    var xpos: c_int = ncplane_halign(n, @"align", width);
    if (xpos < @as(c_int, 0)) {
        return -@as(c_int, 1);
    }
    return ncplane_putwstr_yx(n, y, xpos, gclustarr);
}
pub extern fn ncplane_putwstr_stained(n: ?*struct_ncplane, gclustarr: [*c]const wchar_t) c_int;
pub fn ncplane_putwstr(arg_n: ?*struct_ncplane, arg_gclustarr: [*c]const wchar_t) callconv(.C) c_int {
    var n = arg_n;
    var gclustarr = arg_gclustarr;
    return ncplane_putwstr_yx(n, -@as(c_int, 1), -@as(c_int, 1), gclustarr);
} // /usr/include/notcurses/notcurses.h:2014:8: warning: unsupported type: 'VariableArray'
// /usr/include/notcurses/notcurses.h:2013:1: warning: unable to translate function, demoted to extern
pub extern fn ncplane_putwc_yx(arg_n: ?*struct_ncplane, arg_y: c_int, arg_x: c_int, arg_w: wchar_t) callconv(.C) c_int;
pub fn ncplane_putwc(arg_n: ?*struct_ncplane, arg_w: wchar_t) callconv(.C) c_int {
    var n = arg_n;
    var w = arg_w;
    return ncplane_putwc_yx(n, -@as(c_int, 1), -@as(c_int, 1), w);
}
pub fn ncplane_putwc_stained(arg_n: ?*struct_ncplane, arg_w: wchar_t) callconv(.C) c_int {
    var n = arg_n;
    var w = arg_w;
    var warr: [2]wchar_t = [2]wchar_t{
        w,
        '\u{0}',
    };
    return ncplane_putwstr_stained(n, @ptrCast([*c]wchar_t, @alignCast(@import("std").meta.alignment(wchar_t), &warr)));
}
pub extern fn ncplane_vprintf_aligned(n: ?*struct_ncplane, y: c_int, @"align": ncalign_e, format: [*c]const u8, ap: [*c]struct___va_list_tag) c_int;
pub extern fn ncplane_vprintf_yx(n: ?*struct_ncplane, y: c_int, x: c_int, format: [*c]const u8, ap: [*c]struct___va_list_tag) c_int;
pub fn ncplane_vprintf(arg_n: ?*struct_ncplane, arg_format: [*c]const u8, arg_ap: [*c]struct___va_list_tag) callconv(.C) c_int {
    var n = arg_n;
    var format = arg_format;
    var ap = arg_ap;
    return ncplane_vprintf_yx(n, -@as(c_int, 1), -@as(c_int, 1), format, ap);
}
pub extern fn ncplane_vprintf_stained(n: ?*struct_ncplane, format: [*c]const u8, ap: [*c]struct___va_list_tag) c_int; // /usr/include/notcurses/notcurses.h:2058:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn ncplane_printf(n: ?*struct_ncplane, format: [*c]const u8, ...) c_int; // /usr/include/notcurses/notcurses.h:2071:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn ncplane_printf_yx(n: ?*struct_ncplane, y: c_int, x: c_int, format: [*c]const u8, ...) c_int; // /usr/include/notcurses/notcurses.h:2085:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn ncplane_printf_aligned(n: ?*struct_ncplane, y: c_int, @"align": ncalign_e, format: [*c]const u8, ...) c_int; // /usr/include/notcurses/notcurses.h:2098:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn ncplane_printf_stained(n: ?*struct_ncplane, format: [*c]const u8, ...) c_int;
pub extern fn ncplane_puttext(n: ?*struct_ncplane, y: c_int, @"align": ncalign_e, text: [*c]const u8, bytes: [*c]usize) c_int;
pub extern fn ncplane_hline_interp(n: ?*struct_ncplane, c: [*c]const nccell, len: c_int, c1: u64, c2: u64) c_int;
pub fn ncplane_hline(arg_n: ?*struct_ncplane, arg_c: [*c]const nccell, arg_len: c_int) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    var len = arg_len;
    return ncplane_hline_interp(n, c, len, c.*.channels, c.*.channels);
}
pub extern fn ncplane_vline_interp(n: ?*struct_ncplane, c: [*c]const nccell, len: c_int, c1: u64, c2: u64) c_int;
pub fn ncplane_vline(arg_n: ?*struct_ncplane, arg_c: [*c]const nccell, arg_len: c_int) callconv(.C) c_int {
    var n = arg_n;
    var c = arg_c;
    var len = arg_len;
    return ncplane_vline_interp(n, c, len, c.*.channels, c.*.channels);
}
pub extern fn ncplane_box(n: ?*struct_ncplane, ul: [*c]const nccell, ur: [*c]const nccell, ll: [*c]const nccell, lr: [*c]const nccell, hline: [*c]const nccell, vline: [*c]const nccell, ystop: c_int, xstop: c_int, ctlword: c_uint) c_int;
pub fn ncplane_box_sized(arg_n: ?*struct_ncplane, arg_ul: [*c]const nccell, arg_ur: [*c]const nccell, arg_ll: [*c]const nccell, arg_lr: [*c]const nccell, arg_hline: [*c]const nccell, arg_vline: [*c]const nccell, arg_ylen: c_int, arg_xlen: c_int, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hline = arg_hline;
    var vline = arg_vline;
    var ylen = arg_ylen;
    var xlen = arg_xlen;
    var ctlword = arg_ctlword;
    var y: c_int = undefined;
    var x: c_int = undefined;
    ncplane_cursor_yx(n, &y, &x);
    return ncplane_box(n, ul, ur, ll, lr, hline, vline, (y + ylen) - @as(c_int, 1), (x + xlen) - @as(c_int, 1), ctlword);
}
pub fn ncplane_perimeter(arg_n: ?*struct_ncplane, arg_ul: [*c]const nccell, arg_ur: [*c]const nccell, arg_ll: [*c]const nccell, arg_lr: [*c]const nccell, arg_hline: [*c]const nccell, arg_vline: [*c]const nccell, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hline = arg_hline;
    var vline = arg_vline;
    var ctlword = arg_ctlword;
    if (ncplane_cursor_move_yx(n, @as(c_int, 0), @as(c_int, 0)) != 0) {
        return -@as(c_int, 1);
    }
    var dimy: c_int = undefined;
    var dimx: c_int = undefined;
    ncplane_dim_yx(n, &dimy, &dimx);
    return ncplane_box_sized(n, ul, ur, ll, lr, hline, vline, dimy, dimx, ctlword);
}
pub extern fn ncplane_polyfill_yx(n: ?*struct_ncplane, y: c_int, x: c_int, c: [*c]const nccell) c_int;
pub extern fn ncplane_gradient(n: ?*struct_ncplane, egc: [*c]const u8, stylemask: u32, ul: u64, ur: u64, ll: u64, lr: u64, ystop: c_int, xstop: c_int) c_int;
pub extern fn ncplane_highgradient(n: ?*struct_ncplane, ul: u32, ur: u32, ll: u32, lr: u32, ystop: c_int, xstop: c_int) c_int;
pub fn ncplane_gradient_sized(arg_n: ?*struct_ncplane, arg_egc: [*c]const u8, arg_stylemask: u32, arg_ul: u64, arg_ur: u64, arg_ll: u64, arg_lr: u64, arg_ylen: c_int, arg_xlen: c_int) callconv(.C) c_int {
    var n = arg_n;
    var egc = arg_egc;
    var stylemask = arg_stylemask;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var ylen = arg_ylen;
    var xlen = arg_xlen;
    if ((ylen < @as(c_int, 1)) or (xlen < @as(c_int, 1))) {
        return -@as(c_int, 1);
    }
    var y: c_int = undefined;
    var x: c_int = undefined;
    ncplane_cursor_yx(n, &y, &x);
    return ncplane_gradient(n, egc, stylemask, ul, ur, ll, lr, (y + ylen) - @as(c_int, 1), (x + xlen) - @as(c_int, 1));
}
pub extern fn ncplane_highgradient_sized(n: ?*struct_ncplane, ul: u32, ur: u32, ll: u32, lr: u32, ylen: c_int, xlen: c_int) c_int;
pub extern fn ncplane_format(n: ?*struct_ncplane, ystop: c_int, xstop: c_int, stylemask: u32) c_int;
pub extern fn ncplane_stain(n: ?*struct_ncplane, ystop: c_int, xstop: c_int, ul: u64, ur: u64, ll: u64, lr: u64) c_int;
pub extern fn ncplane_mergedown_simple(noalias src: ?*struct_ncplane, noalias dst: ?*struct_ncplane) c_int;
pub extern fn ncplane_mergedown(noalias src: ?*struct_ncplane, noalias dst: ?*struct_ncplane, begsrcy: c_int, begsrcx: c_int, leny: c_int, lenx: c_int, dsty: c_int, dstx: c_int) c_int;
pub extern fn ncplane_erase(n: ?*struct_ncplane) void;
pub extern fn ncplane_erase_region(n: ?*struct_ncplane, ystart: c_int, xstart: c_int, ylen: c_int, xlen: c_int) c_int;
pub fn nccell_fg_rgb(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_fg_rgb(cl.*.channels);
}
pub fn nccell_bg_rgb(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_bg_rgb(cl.*.channels);
}
pub fn nccell_fg_alpha(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_fg_alpha(cl.*.channels);
}
pub fn nccell_bg_alpha(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_bg_alpha(cl.*.channels);
}
pub fn nccell_fg_rgb8(arg_cl: [*c]const nccell, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_fg_rgb8(cl.*.channels, r, g, b);
}
pub fn nccell_bg_rgb8(arg_cl: [*c]const nccell, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_bg_rgb8(cl.*.channels, r, g, b);
}
pub fn nccell_set_fg_rgb8(arg_cl: [*c]nccell, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_set_fg_rgb8(&cl.*.channels, r, g, b);
}
pub fn nccell_set_fg_rgb8_clipped(arg_cl: [*c]nccell, arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) void {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    ncchannels_set_fg_rgb8_clipped(&cl.*.channels, r, g, b);
}
pub fn nccell_set_fg_rgb(arg_c: [*c]nccell, arg_channel: u32) callconv(.C) c_int {
    var c = arg_c;
    var channel = arg_channel;
    return ncchannels_set_fg_rgb(&c.*.channels, channel);
}
pub fn nccell_set_fg_palindex(arg_cl: [*c]nccell, arg_idx: c_int) callconv(.C) c_int {
    var cl = arg_cl;
    var idx = arg_idx;
    return ncchannels_set_fg_palindex(&cl.*.channels, idx);
}
pub fn nccell_fg_palindex(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_fg_palindex(cl.*.channels);
}
pub fn nccell_set_bg_rgb8(arg_cl: [*c]nccell, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_set_bg_rgb8(&cl.*.channels, r, g, b);
}
pub fn nccell_set_bg_rgb8_clipped(arg_cl: [*c]nccell, arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) void {
    var cl = arg_cl;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    ncchannels_set_bg_rgb8_clipped(&cl.*.channels, r, g, b);
}
pub fn nccell_set_bg_rgb(arg_c: [*c]nccell, arg_channel: u32) callconv(.C) c_int {
    var c = arg_c;
    var channel = arg_channel;
    return ncchannels_set_bg_rgb(&c.*.channels, channel);
}
pub fn nccell_set_bg_palindex(arg_cl: [*c]nccell, arg_idx: c_int) callconv(.C) c_int {
    var cl = arg_cl;
    var idx = arg_idx;
    return ncchannels_set_bg_palindex(&cl.*.channels, idx);
}
pub fn nccell_bg_palindex(arg_cl: [*c]const nccell) callconv(.C) u32 {
    var cl = arg_cl;
    return ncchannels_bg_palindex(cl.*.channels);
}
pub fn nccell_fg_default_p(arg_cl: [*c]const nccell) callconv(.C) bool {
    var cl = arg_cl;
    return ncchannels_fg_default_p(cl.*.channels);
}
pub fn nccell_fg_palindex_p(arg_cl: [*c]const nccell) callconv(.C) bool {
    var cl = arg_cl;
    return ncchannels_fg_palindex_p(cl.*.channels);
}
pub fn nccell_bg_default_p(arg_cl: [*c]const nccell) callconv(.C) bool {
    var cl = arg_cl;
    return ncchannels_bg_default_p(cl.*.channels);
}
pub fn nccell_bg_palindex_p(arg_cl: [*c]const nccell) callconv(.C) bool {
    var cl = arg_cl;
    return ncchannels_bg_palindex_p(cl.*.channels);
}
pub fn ncplane_bchannel(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_bchannel(ncplane_channels(n));
}
pub fn ncplane_fchannel(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_fchannel(ncplane_channels(n));
}
pub extern fn ncplane_set_channels(n: ?*struct_ncplane, channels: u64) void;
pub extern fn ncplane_set_styles(n: ?*struct_ncplane, stylebits: c_uint) void;
pub extern fn ncplane_on_styles(n: ?*struct_ncplane, stylebits: c_uint) void;
pub extern fn ncplane_off_styles(n: ?*struct_ncplane, stylebits: c_uint) void;
pub fn ncplane_fg_rgb(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_fg_rgb(ncplane_channels(n));
}
pub fn ncplane_bg_rgb(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_bg_rgb(ncplane_channels(n));
}
pub fn ncplane_fg_alpha(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_fg_alpha(ncplane_channels(n));
}
pub fn ncplane_fg_default_p(arg_n: ?*const struct_ncplane) callconv(.C) bool {
    var n = arg_n;
    return ncchannels_fg_default_p(ncplane_channels(n));
}
pub fn ncplane_bg_alpha(arg_n: ?*const struct_ncplane) callconv(.C) u32 {
    var n = arg_n;
    return ncchannels_bg_alpha(ncplane_channels(n));
}
pub fn ncplane_bg_default_p(arg_n: ?*const struct_ncplane) callconv(.C) bool {
    var n = arg_n;
    return ncchannels_bg_default_p(ncplane_channels(n));
}
pub fn ncplane_fg_rgb8(arg_n: ?*const struct_ncplane, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var n = arg_n;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_fg_rgb8(ncplane_channels(n), r, g, b);
}
pub fn ncplane_bg_rgb8(arg_n: ?*const struct_ncplane, arg_r: [*c]c_uint, arg_g: [*c]c_uint, arg_b: [*c]c_uint) callconv(.C) u32 {
    var n = arg_n;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    return ncchannels_bg_rgb8(ncplane_channels(n), r, g, b);
}
pub extern fn ncplane_set_fchannel(n: ?*struct_ncplane, channel: u32) u64;
pub extern fn ncplane_set_bchannel(n: ?*struct_ncplane, channel: u32) u64;
pub extern fn ncplane_set_fg_rgb8(n: ?*struct_ncplane, r: c_uint, g: c_uint, b: c_uint) c_int;
pub extern fn ncplane_set_bg_rgb8(n: ?*struct_ncplane, r: c_uint, g: c_uint, b: c_uint) c_int;
pub extern fn ncplane_set_bg_rgb8_clipped(n: ?*struct_ncplane, r: c_int, g: c_int, b: c_int) void;
pub extern fn ncplane_set_fg_rgb8_clipped(n: ?*struct_ncplane, r: c_int, g: c_int, b: c_int) void;
pub extern fn ncplane_set_fg_rgb(n: ?*struct_ncplane, channel: u32) c_int;
pub extern fn ncplane_set_bg_rgb(n: ?*struct_ncplane, channel: u32) c_int;
pub extern fn ncplane_set_fg_default(n: ?*struct_ncplane) void;
pub extern fn ncplane_set_bg_default(n: ?*struct_ncplane) void;
pub extern fn ncplane_set_fg_palindex(n: ?*struct_ncplane, idx: c_int) c_int;
pub extern fn ncplane_set_bg_palindex(n: ?*struct_ncplane, idx: c_int) c_int;
pub extern fn ncplane_set_fg_alpha(n: ?*struct_ncplane, alpha: c_int) c_int;
pub extern fn ncplane_set_bg_alpha(n: ?*struct_ncplane, alpha: c_int) c_int;
pub const fadecb = ?fn (?*struct_notcurses, ?*struct_ncplane, [*c]const struct_timespec, ?*c_void) callconv(.C) c_int;
pub extern fn ncplane_fadeout(n: ?*struct_ncplane, ts: [*c]const struct_timespec, fader: fadecb, curry: ?*c_void) c_int;
pub extern fn ncplane_fadein(n: ?*struct_ncplane, ts: [*c]const struct_timespec, fader: fadecb, curry: ?*c_void) c_int;
pub extern fn ncfadectx_setup(n: ?*struct_ncplane) ?*struct_ncfadectx;
pub extern fn ncfadectx_iterations(nctx: ?*const struct_ncfadectx) c_int;
pub extern fn ncplane_fadeout_iteration(n: ?*struct_ncplane, nctx: ?*struct_ncfadectx, iter: c_int, fader: fadecb, curry: ?*c_void) c_int;
pub extern fn ncplane_fadein_iteration(n: ?*struct_ncplane, nctx: ?*struct_ncfadectx, iter: c_int, fader: fadecb, curry: ?*c_void) c_int;
pub extern fn ncplane_pulse(n: ?*struct_ncplane, ts: [*c]const struct_timespec, fader: fadecb, curry: ?*c_void) c_int;
pub extern fn ncfadectx_free(nctx: ?*struct_ncfadectx) void;
pub fn nccells_load_box(arg_n: ?*struct_ncplane, arg_styles: u32, arg_channels: u64, arg_ul: [*c]nccell, arg_ur: [*c]nccell, arg_ll: [*c]nccell, arg_lr: [*c]nccell, arg_hl: [*c]nccell, arg_vl: [*c]nccell, arg_gclusters: [*c]const u8) callconv(.C) c_int {
    var n = arg_n;
    var styles = arg_styles;
    var channels = arg_channels;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hl = arg_hl;
    var vl = arg_vl;
    var gclusters = arg_gclusters;
    var ulen: c_int = undefined;
    if ((blk: {
        const tmp = nccell_prime(n, ul, gclusters, styles, channels);
        ulen = tmp;
        break :blk tmp;
    }) > @as(c_int, 0)) {
        if ((blk: {
            const tmp = nccell_prime(n, ur, blk_1: {
                const ref = &gclusters;
                ref.* += @bitCast(usize, @intCast(isize, ulen));
                break :blk_1 ref.*;
            }, styles, channels);
            ulen = tmp;
            break :blk tmp;
        }) > @as(c_int, 0)) {
            if ((blk: {
                const tmp = nccell_prime(n, ll, blk_1: {
                    const ref = &gclusters;
                    ref.* += @bitCast(usize, @intCast(isize, ulen));
                    break :blk_1 ref.*;
                }, styles, channels);
                ulen = tmp;
                break :blk tmp;
            }) > @as(c_int, 0)) {
                if ((blk: {
                    const tmp = nccell_prime(n, lr, blk_1: {
                        const ref = &gclusters;
                        ref.* += @bitCast(usize, @intCast(isize, ulen));
                        break :blk_1 ref.*;
                    }, styles, channels);
                    ulen = tmp;
                    break :blk tmp;
                }) > @as(c_int, 0)) {
                    if ((blk: {
                        const tmp = nccell_prime(n, hl, blk_1: {
                            const ref = &gclusters;
                            ref.* += @bitCast(usize, @intCast(isize, ulen));
                            break :blk_1 ref.*;
                        }, styles, channels);
                        ulen = tmp;
                        break :blk tmp;
                    }) > @as(c_int, 0)) {
                        if (nccell_prime(n, vl, gclusters + @bitCast(usize, @intCast(isize, ulen)), styles, channels) > @as(c_int, 0)) {
                            return 0;
                        }
                        nccell_release(n, hl);
                    }
                    nccell_release(n, lr);
                }
                nccell_release(n, ll);
            }
            nccell_release(n, ur);
        }
        nccell_release(n, ul);
    }
    return -@as(c_int, 1);
}
pub extern fn nccells_rounded_box(n: ?*struct_ncplane, styles: u32, channels: u64, ul: [*c]nccell, ur: [*c]nccell, ll: [*c]nccell, lr: [*c]nccell, hl: [*c]nccell, vl: [*c]nccell) c_int;
pub fn nccells_ascii_box(arg_n: ?*struct_ncplane, arg_attr: u32, arg_channels: u64, arg_ul: [*c]nccell, arg_ur: [*c]nccell, arg_ll: [*c]nccell, arg_lr: [*c]nccell, arg_hl: [*c]nccell, arg_vl: [*c]nccell) callconv(.C) c_int {
    var n = arg_n;
    var attr = arg_attr;
    var channels = arg_channels;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hl = arg_hl;
    var vl = arg_vl;
    return nccells_load_box(n, attr, channels, ul, ur, ll, lr, hl, vl, "/\\\\/-|");
}
pub fn nccells_light_box(arg_n: ?*struct_ncplane, arg_attr: u32, arg_channels: u64, arg_ul: [*c]nccell, arg_ur: [*c]nccell, arg_ll: [*c]nccell, arg_lr: [*c]nccell, arg_hl: [*c]nccell, arg_vl: [*c]nccell) callconv(.C) c_int {
    var n = arg_n;
    var attr = arg_attr;
    var channels = arg_channels;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hl = arg_hl;
    var vl = arg_vl;
    if (notcurses_canutf8(ncplane_notcurses(n))) {
        return nccells_load_box(n, attr, channels, ul, ur, ll, lr, hl, vl, "\xe2\x94\x8c\xe2\x94\x90\xe2\x94\x94\xe2\x94\x98\xe2\x94\x80\xe2\x94\x82");
    }
    return nccells_ascii_box(n, attr, channels, ul, ur, ll, lr, hl, vl);
}
pub fn nccells_heavy_box(arg_n: ?*struct_ncplane, arg_attr: u32, arg_channels: u64, arg_ul: [*c]nccell, arg_ur: [*c]nccell, arg_ll: [*c]nccell, arg_lr: [*c]nccell, arg_hl: [*c]nccell, arg_vl: [*c]nccell) callconv(.C) c_int {
    var n = arg_n;
    var attr = arg_attr;
    var channels = arg_channels;
    var ul = arg_ul;
    var ur = arg_ur;
    var ll = arg_ll;
    var lr = arg_lr;
    var hl = arg_hl;
    var vl = arg_vl;
    if (notcurses_canutf8(ncplane_notcurses(n))) {
        return nccells_load_box(n, attr, channels, ul, ur, ll, lr, hl, vl, "\xe2\x94\x8f\xe2\x94\x93\xe2\x94\x97\xe2\x94\x9b\xe2\x94\x81\xe2\x94\x83");
    }
    return nccells_ascii_box(n, attr, channels, ul, ur, ll, lr, hl, vl);
}
pub fn ncplane_rounded_box(arg_n: ?*struct_ncplane, arg_styles: u32, arg_channels: u64, arg_ystop: c_int, arg_xstop: c_int, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var styles = arg_styles;
    var channels = arg_channels;
    var ystop = arg_ystop;
    var xstop = arg_xstop;
    var ctlword = arg_ctlword;
    var ret: c_int = 0;
    var ul: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ur: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ll: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var lr: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var hl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var vl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    if ((blk: {
        const tmp = nccells_rounded_box(n, styles, channels, &ul, &ur, &ll, &lr, &hl, &vl);
        ret = tmp;
        break :blk tmp;
    }) == @as(c_int, 0)) {
        ret = ncplane_box(n, &ul, &ur, &ll, &lr, &hl, &vl, ystop, xstop, ctlword);
    }
    nccell_release(n, &ul);
    nccell_release(n, &ur);
    nccell_release(n, &ll);
    nccell_release(n, &lr);
    nccell_release(n, &hl);
    nccell_release(n, &vl);
    return ret;
}
pub fn ncplane_perimeter_rounded(arg_n: ?*struct_ncplane, arg_stylemask: u32, arg_channels: u64, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var stylemask = arg_stylemask;
    var channels = arg_channels;
    var ctlword = arg_ctlword;
    if (ncplane_cursor_move_yx(n, @as(c_int, 0), @as(c_int, 0)) != 0) {
        return -@as(c_int, 1);
    }
    var dimy: c_int = undefined;
    var dimx: c_int = undefined;
    ncplane_dim_yx(n, &dimy, &dimx);
    var ul: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ur: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ll: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var lr: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var vl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var hl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    if (nccells_rounded_box(n, stylemask, channels, &ul, &ur, &ll, &lr, &hl, &vl) != 0) {
        return -@as(c_int, 1);
    }
    var r: c_int = ncplane_box_sized(n, &ul, &ur, &ll, &lr, &hl, &vl, dimy, dimx, ctlword);
    nccell_release(n, &ul);
    nccell_release(n, &ur);
    nccell_release(n, &ll);
    nccell_release(n, &lr);
    nccell_release(n, &hl);
    nccell_release(n, &vl);
    return r;
}
pub fn ncplane_rounded_box_sized(arg_n: ?*struct_ncplane, arg_styles: u32, arg_channels: u64, arg_ylen: c_int, arg_xlen: c_int, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var styles = arg_styles;
    var channels = arg_channels;
    var ylen = arg_ylen;
    var xlen = arg_xlen;
    var ctlword = arg_ctlword;
    var y: c_int = undefined;
    var x: c_int = undefined;
    ncplane_cursor_yx(n, &y, &x);
    return ncplane_rounded_box(n, styles, channels, (y + ylen) - @as(c_int, 1), (x + xlen) - @as(c_int, 1), ctlword);
}
pub extern fn nccells_double_box(n: ?*struct_ncplane, styles: u32, channels: u64, ul: [*c]nccell, ur: [*c]nccell, ll: [*c]nccell, lr: [*c]nccell, hl: [*c]nccell, vl: [*c]nccell) c_int;
pub fn ncplane_double_box(arg_n: ?*struct_ncplane, arg_styles: u32, arg_channels: u64, arg_ystop: c_int, arg_xstop: c_int, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var styles = arg_styles;
    var channels = arg_channels;
    var ystop = arg_ystop;
    var xstop = arg_xstop;
    var ctlword = arg_ctlword;
    var ret: c_int = 0;
    var ul: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ur: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ll: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var lr: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var hl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var vl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    if ((blk: {
        const tmp = nccells_double_box(n, styles, channels, &ul, &ur, &ll, &lr, &hl, &vl);
        ret = tmp;
        break :blk tmp;
    }) == @as(c_int, 0)) {
        ret = ncplane_box(n, &ul, &ur, &ll, &lr, &hl, &vl, ystop, xstop, ctlword);
    }
    nccell_release(n, &ul);
    nccell_release(n, &ur);
    nccell_release(n, &ll);
    nccell_release(n, &lr);
    nccell_release(n, &hl);
    nccell_release(n, &vl);
    return ret;
}
pub fn ncplane_perimeter_double(arg_n: ?*struct_ncplane, arg_stylemask: u32, arg_channels: u64, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var stylemask = arg_stylemask;
    var channels = arg_channels;
    var ctlword = arg_ctlword;
    if (ncplane_cursor_move_yx(n, @as(c_int, 0), @as(c_int, 0)) != 0) {
        return -@as(c_int, 1);
    }
    var dimy: c_int = undefined;
    var dimx: c_int = undefined;
    ncplane_dim_yx(n, &dimy, &dimx);
    var ul: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ur: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var ll: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var lr: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var vl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    var hl: nccell = nccell{
        .gcluster = @bitCast(u32, @as(c_int, 0)),
        .gcluster_backstop = @bitCast(u8, @truncate(i8, @as(c_int, 0))),
        .width = @bitCast(u8, @truncate(i8, @as(c_int, 1))),
        .stylemask = @bitCast(u16, @truncate(c_short, @as(c_int, 0))),
        .channels = @bitCast(u64, @as(c_long, @as(c_int, 0))),
    };
    if (nccells_double_box(n, stylemask, channels, &ul, &ur, &ll, &lr, &hl, &vl) != 0) {
        return -@as(c_int, 1);
    }
    var r: c_int = ncplane_box_sized(n, &ul, &ur, &ll, &lr, &hl, &vl, dimy, dimx, ctlword);
    nccell_release(n, &ul);
    nccell_release(n, &ur);
    nccell_release(n, &ll);
    nccell_release(n, &lr);
    nccell_release(n, &hl);
    nccell_release(n, &vl);
    return r;
}
pub fn ncplane_double_box_sized(arg_n: ?*struct_ncplane, arg_styles: u32, arg_channels: u64, arg_ylen: c_int, arg_xlen: c_int, arg_ctlword: c_uint) callconv(.C) c_int {
    var n = arg_n;
    var styles = arg_styles;
    var channels = arg_channels;
    var ylen = arg_ylen;
    var xlen = arg_xlen;
    var ctlword = arg_ctlword;
    var y: c_int = undefined;
    var x: c_int = undefined;
    ncplane_cursor_yx(n, &y, &x);
    return ncplane_double_box(n, styles, channels, (y + ylen) - @as(c_int, 1), (x + xlen) - @as(c_int, 1), ctlword);
}
pub extern fn ncvisual_from_file(file: [*c]const u8) ?*struct_ncvisual;
pub extern fn ncvisual_from_rgba(rgba: ?*const c_void, rows: c_int, rowstride: c_int, cols: c_int) ?*struct_ncvisual;
pub extern fn ncvisual_from_rgb_packed(rgba: ?*const c_void, rows: c_int, rowstride: c_int, cols: c_int, alpha: c_int) ?*struct_ncvisual;
pub extern fn ncvisual_from_rgb_loose(rgba: ?*const c_void, rows: c_int, rowstride: c_int, cols: c_int, alpha: c_int) ?*struct_ncvisual;
pub extern fn ncvisual_from_bgra(bgra: ?*const c_void, rows: c_int, rowstride: c_int, cols: c_int) ?*struct_ncvisual;
pub extern fn ncvisual_from_palidx(data: ?*const c_void, rows: c_int, rowstride: c_int, cols: c_int, palsize: c_int, pstride: c_int, palette: [*c]const u32) ?*struct_ncvisual;
pub extern fn ncvisual_from_plane(n: ?*const struct_ncplane, blit: ncblitter_e, begy: c_int, begx: c_int, leny: c_int, lenx: c_int) ?*struct_ncvisual;
pub const struct_ncvisual_options = extern struct {
    n: ?*struct_ncplane,
    scaling: ncscale_e,
    y: c_int,
    x: c_int,
    begy: c_int,
    begx: c_int,
    leny: c_int,
    lenx: c_int,
    blitter: ncblitter_e,
    flags: u64,
    transcolor: u32,
    pxoffy: c_uint,
    pxoffx: c_uint,
};
pub extern fn ncplane_as_rgba(n: ?*const struct_ncplane, blit: ncblitter_e, begy: c_int, begx: c_int, leny: c_int, lenx: c_int, pxdimy: [*c]c_int, pxdimx: [*c]c_int) [*c]u32;
pub extern fn ncvisual_blitter_geom(nc: ?*const struct_notcurses, n: ?*const struct_ncvisual, vopts: [*c]const struct_ncvisual_options, y: [*c]c_int, x: [*c]c_int, scaley: [*c]c_int, scalex: [*c]c_int, blitter: [*c]ncblitter_e) c_int;
pub extern fn ncvisual_destroy(ncv: ?*struct_ncvisual) void;
pub extern fn ncvisual_decode(nc: ?*struct_ncvisual) c_int;
pub extern fn ncvisual_decode_loop(nc: ?*struct_ncvisual) c_int;
pub extern fn ncvisual_rotate(n: ?*struct_ncvisual, rads: f64) c_int;
pub extern fn ncvisual_resize(n: ?*struct_ncvisual, rows: c_int, cols: c_int) c_int;
pub extern fn ncvisual_resize_noninterpolative(n: ?*struct_ncvisual, rows: c_int, cols: c_int) c_int;
pub extern fn ncvisual_polyfill_yx(n: ?*struct_ncvisual, y: c_int, x: c_int, rgba: u32) c_int;
pub extern fn ncvisual_at_yx(n: ?*const struct_ncvisual, y: c_int, x: c_int, pixel: [*c]u32) c_int;
pub extern fn ncvisual_set_yx(n: ?*const struct_ncvisual, y: c_int, x: c_int, pixel: u32) c_int;
pub extern fn ncvisual_render(nc: ?*struct_notcurses, ncv: ?*struct_ncvisual, vopts: [*c]const struct_ncvisual_options) ?*struct_ncplane;
pub extern fn ncvisual_blit(nc: ?*struct_notcurses, ncv: ?*struct_ncvisual, vopts: [*c]const struct_ncvisual_options) ?*struct_ncplane;
pub fn ncvisualplane_create(arg_nc: ?*struct_notcurses, arg_opts: [*c]const struct_ncplane_options, arg_ncv: ?*struct_ncvisual, arg_vopts: [*c]struct_ncvisual_options) callconv(.C) ?*struct_ncplane {
    var nc = arg_nc;
    var opts = arg_opts;
    var ncv = arg_ncv;
    var vopts = arg_vopts;
    var newn: ?*struct_ncplane = undefined;
    if ((vopts != null) and (vopts.*.n != null)) {
        if ((@bitCast(c_ulonglong, @as(c_ulonglong, vopts.*.flags)) & @as(c_ulonglong, 32)) != 0) {
            return null;
        }
        newn = ncplane_create(vopts.*.n, opts);
    } else {
        newn = ncpile_create(nc, opts);
    }
    if (newn == @ptrCast(?*struct_ncplane, @intToPtr(?*c_void, @as(c_int, 0)))) {
        return null;
    }
    var v: struct_ncvisual_options = undefined;
    if (!(vopts != null)) {
        vopts = &v;
        _ = memset(@ptrCast(?*c_void, vopts), @as(c_int, 0), @sizeOf(struct_ncvisual_options));
    }
    vopts.*.n = newn;
    if (ncvisual_blit(nc, ncv, vopts) == @ptrCast(?*struct_ncplane, @intToPtr(?*c_void, @as(c_int, 0)))) {
        _ = ncplane_destroy(newn);
        vopts.*.n = null;
        return null;
    }
    return newn;
}
pub extern fn ncvisual_subtitle_plane(parent: ?*struct_ncplane, ncv: ?*const struct_ncvisual) ?*struct_ncplane;
pub extern fn ncvisual_media_defblitter(nc: ?*const struct_notcurses, scale: ncscale_e) ncblitter_e;
pub const ncstreamcb = ?fn (?*struct_ncvisual, [*c]struct_ncvisual_options, [*c]const struct_timespec, ?*c_void) callconv(.C) c_int;
pub extern fn ncvisual_simple_streamer(ncv: ?*struct_ncvisual, vopts: [*c]struct_ncvisual_options, tspec: [*c]const struct_timespec, curry: ?*c_void) c_int;
pub extern fn ncvisual_stream(nc: ?*struct_notcurses, ncv: ?*struct_ncvisual, timescale: f32, streamer: ncstreamcb, vopts: [*c]const struct_ncvisual_options, curry: ?*c_void) c_int;
pub extern fn ncblit_rgba(data: ?*const c_void, linesize: c_int, vopts: [*c]const struct_ncvisual_options) c_int;
pub extern fn ncblit_bgrx(data: ?*const c_void, linesize: c_int, vopts: [*c]const struct_ncvisual_options) c_int;
pub extern fn ncblit_rgb_packed(data: ?*const c_void, linesize: c_int, vopts: [*c]const struct_ncvisual_options, alpha: c_int) c_int;
pub extern fn ncblit_rgb_loose(data: ?*const c_void, linesize: c_int, vopts: [*c]const struct_ncvisual_options, alpha: c_int) c_int;
pub fn ncpixel_a(arg_pixel: u32) callconv(.C) c_uint {
    var pixel = arg_pixel;
    return @bitCast(c_uint, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel)))) & @as(c_ulong, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_ulong), 24)));
}
pub fn ncpixel_r(arg_pixel: u32) callconv(.C) c_uint {
    var pixel = arg_pixel;
    return @bitCast(c_uint, @truncate(c_uint, @bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel)))) & @as(c_ulong, 255)));
}
pub fn ncpixel_g(arg_pixel: u32) callconv(.C) c_uint {
    var pixel = arg_pixel;
    return @bitCast(c_uint, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel)))) & @as(c_ulong, 65280)) >> @intCast(@import("std").math.Log2Int(c_ulong), 8)));
}
pub fn ncpixel_b(arg_pixel: u32) callconv(.C) c_uint {
    var pixel = arg_pixel;
    return @bitCast(c_uint, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel)))) & @as(c_ulong, 16711680)) >> @intCast(@import("std").math.Log2Int(c_ulong), 16)));
}
pub fn ncpixel_set_a(arg_pixel: [*c]u32, arg_a: c_uint) callconv(.C) c_int {
    var pixel = arg_pixel;
    var a = arg_a;
    if (a > @bitCast(c_uint, @as(c_int, 255))) {
        return -@as(c_int, 1);
    }
    pixel.* = __bswap_32(__bswap_32(@bitCast(__uint32_t, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel.*)))) & @as(c_ulong, 16777215)) | @bitCast(c_ulong, @as(c_ulong, a << @intCast(@import("std").math.Log2Int(c_uint), 24)))))));
    return 0;
}
pub fn ncpixel_set_r(arg_pixel: [*c]u32, arg_r: c_uint) callconv(.C) c_int {
    var pixel = arg_pixel;
    var r = arg_r;
    if (r > @bitCast(c_uint, @as(c_int, 255))) {
        return -@as(c_int, 1);
    }
    pixel.* = __bswap_32(__bswap_32(@bitCast(__uint32_t, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel.*)))) & @as(c_ulong, 4294967040)) | @bitCast(c_ulong, @as(c_ulong, r))))));
    return 0;
}
pub fn ncpixel_set_g(arg_pixel: [*c]u32, arg_g: c_uint) callconv(.C) c_int {
    var pixel = arg_pixel;
    var g = arg_g;
    if (g > @bitCast(c_uint, @as(c_int, 255))) {
        return -@as(c_int, 1);
    }
    pixel.* = __bswap_32(__bswap_32(@bitCast(__uint32_t, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel.*)))) & @as(c_ulong, 4294902015)) | @bitCast(c_ulong, @as(c_ulong, g << @intCast(@import("std").math.Log2Int(c_uint), 8)))))));
    return 0;
}
pub fn ncpixel_set_b(arg_pixel: [*c]u32, arg_b: c_uint) callconv(.C) c_int {
    var pixel = arg_pixel;
    var b = arg_b;
    if (b > @bitCast(c_uint, @as(c_int, 255))) {
        return -@as(c_int, 1);
    }
    pixel.* = __bswap_32(__bswap_32(@bitCast(__uint32_t, @truncate(c_uint, (@bitCast(c_ulong, @as(c_ulong, __bswap_32(__bswap_32(pixel.*)))) & @as(c_ulong, 4278255615)) | @bitCast(c_ulong, @as(c_ulong, b << @intCast(@import("std").math.Log2Int(c_uint), 16)))))));
    return 0;
}
pub fn ncpixel(arg_r: c_int, arg_g: c_int, arg_b: c_int) callconv(.C) u32 {
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    var pixel: u32 = 0;
    _ = ncpixel_set_a(&pixel, @bitCast(c_uint, @as(c_int, 255)));
    if (r < @as(c_int, 0)) {
        r = 0;
    }
    if (r > @as(c_int, 255)) {
        r = 255;
    }
    _ = ncpixel_set_r(&pixel, @bitCast(c_uint, r));
    if (g < @as(c_int, 0)) {
        g = 0;
    }
    if (g > @as(c_int, 255)) {
        g = 255;
    }
    _ = ncpixel_set_g(&pixel, @bitCast(c_uint, g));
    if (b < @as(c_int, 0)) {
        b = 0;
    }
    if (b > @as(c_int, 255)) {
        b = 255;
    }
    _ = ncpixel_set_b(&pixel, @bitCast(c_uint, b));
    return pixel;
}
pub fn ncpixel_set_rgb8(arg_pixel: [*c]u32, arg_r: c_uint, arg_g: c_uint, arg_b: c_uint) callconv(.C) c_int {
    var pixel = arg_pixel;
    var r = arg_r;
    var g = arg_g;
    var b = arg_b;
    if (((ncpixel_set_r(pixel, r) != 0) or (ncpixel_set_g(pixel, g) != 0)) or (ncpixel_set_b(pixel, b) != 0)) {
        return -@as(c_int, 1);
    }
    return 0;
}
pub const struct_ncreel_options = extern struct {
    bordermask: c_uint,
    borderchan: u64,
    tabletmask: c_uint,
    tabletchan: u64,
    focusedchan: u64,
    flags: u64,
};
pub const ncreel_options = struct_ncreel_options;
pub extern fn ncreel_create(n: ?*struct_ncplane, popts: [*c]const ncreel_options) ?*struct_ncreel;
pub extern fn ncreel_plane(nr: ?*struct_ncreel) ?*struct_ncplane;
pub const tabletcb = ?fn (?*struct_nctablet, bool) callconv(.C) c_int;
pub extern fn ncreel_add(nr: ?*struct_ncreel, after: ?*struct_nctablet, before: ?*struct_nctablet, cb: tabletcb, @"opaque": ?*c_void) ?*struct_nctablet;
pub extern fn ncreel_tabletcount(nr: ?*const struct_ncreel) c_int;
pub extern fn ncreel_del(nr: ?*struct_ncreel, t: ?*struct_nctablet) c_int;
pub extern fn ncreel_redraw(nr: ?*struct_ncreel) c_int;
pub extern fn ncreel_offer_input(nr: ?*struct_ncreel, ni: [*c]const ncinput) bool;
pub extern fn ncreel_focused(nr: ?*struct_ncreel) ?*struct_nctablet;
pub extern fn ncreel_next(nr: ?*struct_ncreel) ?*struct_nctablet;
pub extern fn ncreel_prev(nr: ?*struct_ncreel) ?*struct_nctablet;
pub extern fn ncreel_destroy(nr: ?*struct_ncreel) void;
pub extern fn nctablet_userptr(t: ?*struct_nctablet) ?*c_void;
pub extern fn nctablet_plane(t: ?*struct_nctablet) ?*struct_ncplane;
pub extern fn ncmetric(val: uintmax_t, decimal: uintmax_t, buf: [*c]u8, omitdec: c_int, mult: uintmax_t, uprefix: c_int) [*c]const u8;
pub fn qprefix(arg_val: uintmax_t, arg_decimal: uintmax_t, arg_buf: [*c]u8, arg_omitdec: c_int) callconv(.C) [*c]const u8 {
    var val = arg_val;
    var decimal = arg_decimal;
    var buf = arg_buf;
    var omitdec = arg_omitdec;
    return ncmetric(val, decimal, buf, omitdec, @bitCast(uintmax_t, @as(c_long, @as(c_int, 1000))), @as(c_int, '\x00'));
}
pub fn iprefix(arg_val: uintmax_t, arg_decimal: uintmax_t, arg_buf: [*c]u8, arg_omitdec: c_int) callconv(.C) [*c]const u8 {
    var val = arg_val;
    var decimal = arg_decimal;
    var buf = arg_buf;
    var omitdec = arg_omitdec;
    return ncmetric(val, decimal, buf, omitdec, @bitCast(uintmax_t, @as(c_long, @as(c_int, 1024))), @as(c_int, '\x00'));
}
pub fn bprefix(arg_val: uintmax_t, arg_decimal: uintmax_t, arg_buf: [*c]u8, arg_omitdec: c_int) callconv(.C) [*c]const u8 {
    var val = arg_val;
    var decimal = arg_decimal;
    var buf = arg_buf;
    var omitdec = arg_omitdec;
    return ncmetric(val, decimal, buf, omitdec, @bitCast(uintmax_t, @as(c_long, @as(c_int, 1024))), @as(c_int, 'i'));
}
pub extern fn notcurses_cursor_enable(nc: ?*struct_notcurses, y: c_int, x: c_int) c_int;
pub extern fn notcurses_cursor_yx(nc: ?*struct_notcurses, y: [*c]c_int, x: [*c]c_int) c_int;
pub extern fn notcurses_cursor_disable(nc: ?*struct_notcurses) c_int;
pub extern fn ncplane_greyscale(n: ?*struct_ncplane) void;
pub const struct_ncselector_item = extern struct {
    option: [*c]const u8,
    desc: [*c]const u8,
};
pub const struct_ncselector_options = extern struct {
    title: [*c]const u8,
    secondary: [*c]const u8,
    footer: [*c]const u8,
    items: [*c]const struct_ncselector_item,
    defidx: c_uint,
    maxdisplay: c_uint,
    opchannels: u64,
    descchannels: u64,
    titlechannels: u64,
    footchannels: u64,
    boxchannels: u64,
    flags: u64,
};
pub const ncselector_options = struct_ncselector_options;
pub extern fn ncselector_create(n: ?*struct_ncplane, opts: [*c]const ncselector_options) ?*struct_ncselector;
pub extern fn ncselector_additem(n: ?*struct_ncselector, item: [*c]const struct_ncselector_item) c_int;
pub extern fn ncselector_delitem(n: ?*struct_ncselector, item: [*c]const u8) c_int;
pub extern fn ncselector_selected(n: ?*const struct_ncselector) [*c]const u8;
pub extern fn ncselector_plane(n: ?*struct_ncselector) ?*struct_ncplane;
pub extern fn ncselector_previtem(n: ?*struct_ncselector) [*c]const u8;
pub extern fn ncselector_nextitem(n: ?*struct_ncselector) [*c]const u8;
pub extern fn ncselector_offer_input(n: ?*struct_ncselector, nc: [*c]const ncinput) bool;
pub extern fn ncselector_destroy(n: ?*struct_ncselector, item: [*c][*c]u8) void;
pub const struct_ncmselector_item = extern struct {
    option: [*c]const u8,
    desc: [*c]const u8,
    selected: bool,
};
pub const struct_ncmultiselector_options = extern struct {
    title: [*c]const u8,
    secondary: [*c]const u8,
    footer: [*c]const u8,
    items: [*c]const struct_ncmselector_item,
    maxdisplay: c_uint,
    opchannels: u64,
    descchannels: u64,
    titlechannels: u64,
    footchannels: u64,
    boxchannels: u64,
    flags: u64,
};
pub const ncmultiselector_options = struct_ncmultiselector_options;
pub extern fn ncmultiselector_create(n: ?*struct_ncplane, opts: [*c]const ncmultiselector_options) ?*struct_ncmultiselector;
pub extern fn ncmultiselector_selected(n: ?*struct_ncmultiselector, selected: [*c]bool, count: c_uint) c_int;
pub extern fn ncmultiselector_plane(n: ?*struct_ncmultiselector) ?*struct_ncplane;
pub extern fn ncmultiselector_offer_input(n: ?*struct_ncmultiselector, nc: [*c]const ncinput) bool;
pub extern fn ncmultiselector_destroy(n: ?*struct_ncmultiselector) void;
pub const struct_nctree_item = extern struct {
    curry: ?*c_void,
    subs: [*c]struct_nctree_item,
    subcount: c_uint,
};
pub const nctree_item = struct_nctree_item;
pub const struct_nctree_options = extern struct {
    items: [*c]const nctree_item,
    count: c_uint,
    nctreecb: ?fn (?*struct_ncplane, ?*c_void, c_int) callconv(.C) c_int,
    indentcols: c_int,
    flags: u64,
};
pub const nctree_options = struct_nctree_options;
pub const struct_nctree = opaque {};
pub extern fn nctree_create(n: ?*struct_ncplane, opts: [*c]const nctree_options) ?*struct_nctree;
pub extern fn nctree_plane(n: ?*struct_nctree) ?*struct_ncplane;
pub extern fn nctree_redraw(n: ?*struct_nctree) c_int;
pub extern fn nctree_offer_input(n: ?*struct_nctree, ni: [*c]const ncinput) bool;
pub extern fn nctree_focused(n: ?*struct_nctree) ?*c_void;
pub extern fn nctree_next(n: ?*struct_nctree) ?*c_void;
pub extern fn nctree_prev(n: ?*struct_nctree) ?*c_void;
pub extern fn nctree_goto(n: ?*struct_nctree, spec: [*c]const c_uint, failspec: [*c]c_int) ?*c_void;
pub extern fn nctree_destroy(n: ?*struct_nctree) void;
pub const struct_ncmenu_item = extern struct {
    desc: [*c]const u8,
    shortcut: ncinput,
};
pub const struct_ncmenu_section = extern struct {
    name: [*c]const u8,
    itemcount: c_int,
    items: [*c]struct_ncmenu_item,
    shortcut: ncinput,
};
pub const struct_ncmenu_options = extern struct {
    sections: [*c]struct_ncmenu_section,
    sectioncount: c_int,
    headerchannels: u64,
    sectionchannels: u64,
    flags: u64,
};
pub const ncmenu_options = struct_ncmenu_options;
pub const struct_ncmenu = opaque {};
pub extern fn ncmenu_create(n: ?*struct_ncplane, opts: [*c]const ncmenu_options) ?*struct_ncmenu;
pub extern fn ncmenu_unroll(n: ?*struct_ncmenu, sectionidx: c_int) c_int;
pub extern fn ncmenu_rollup(n: ?*struct_ncmenu) c_int;
pub extern fn ncmenu_nextsection(n: ?*struct_ncmenu) c_int;
pub extern fn ncmenu_prevsection(n: ?*struct_ncmenu) c_int;
pub extern fn ncmenu_nextitem(n: ?*struct_ncmenu) c_int;
pub extern fn ncmenu_previtem(n: ?*struct_ncmenu) c_int;
pub extern fn ncmenu_item_set_status(n: ?*struct_ncmenu, section: [*c]const u8, item: [*c]const u8, enabled: bool) c_int;
pub extern fn ncmenu_selected(n: ?*const struct_ncmenu, ni: [*c]ncinput) [*c]const u8;
pub extern fn ncmenu_mouse_selected(n: ?*const struct_ncmenu, click: [*c]const ncinput, ni: [*c]ncinput) [*c]const u8;
pub extern fn ncmenu_plane(n: ?*struct_ncmenu) ?*struct_ncplane;
pub extern fn ncmenu_offer_input(n: ?*struct_ncmenu, nc: [*c]const ncinput) bool;
pub extern fn ncmenu_destroy(n: ?*struct_ncmenu) c_int;
pub const struct_ncprogbar_options = extern struct {
    ulchannel: u32,
    urchannel: u32,
    blchannel: u32,
    brchannel: u32,
    flags: u64,
};
pub const ncprogbar_options = struct_ncprogbar_options;
pub extern fn ncprogbar_create(n: ?*struct_ncplane, opts: [*c]const ncprogbar_options) ?*struct_ncprogbar;
pub extern fn ncprogbar_plane(n: ?*struct_ncprogbar) ?*struct_ncplane;
pub extern fn ncprogbar_set_progress(n: ?*struct_ncprogbar, p: f64) c_int;
pub extern fn ncprogbar_progress(n: ?*const struct_ncprogbar) f64;
pub extern fn ncprogbar_destroy(n: ?*struct_ncprogbar) void;
pub const struct_nctabbed_options = extern struct {
    selchan: u64,
    hdrchan: u64,
    sepchan: u64,
    separator: [*c]const u8,
    flags: u64,
};
pub const nctabbed_options = struct_nctabbed_options;
pub const tabcb = ?fn (?*struct_nctab, ?*struct_ncplane, ?*c_void) callconv(.C) void;
pub extern fn nctabbed_create(n: ?*struct_ncplane, opts: [*c]const nctabbed_options) ?*struct_nctabbed;
pub extern fn nctabbed_destroy(nt: ?*struct_nctabbed) void;
pub extern fn nctabbed_redraw(nt: ?*struct_nctabbed) void;
pub extern fn nctabbed_ensure_selected_header_visible(nt: ?*struct_nctabbed) void;
pub extern fn nctabbed_selected(nt: ?*struct_nctabbed) ?*struct_nctab;
pub extern fn nctabbed_leftmost(nt: ?*struct_nctabbed) ?*struct_nctab;
pub extern fn nctabbed_tabcount(nt: ?*struct_nctabbed) c_int;
pub extern fn nctabbed_plane(nt: ?*struct_nctabbed) ?*struct_ncplane;
pub extern fn nctabbed_content_plane(nt: ?*struct_nctabbed) ?*struct_ncplane;
pub extern fn nctab_cb(t: ?*struct_nctab) tabcb;
pub extern fn nctab_name(t: ?*struct_nctab) [*c]const u8;
pub extern fn nctab_name_width(t: ?*struct_nctab) c_int;
pub extern fn nctab_userptr(t: ?*struct_nctab) ?*c_void;
pub extern fn nctab_next(t: ?*struct_nctab) ?*struct_nctab;
pub extern fn nctab_prev(t: ?*struct_nctab) ?*struct_nctab;
pub extern fn nctabbed_add(nt: ?*struct_nctabbed, after: ?*struct_nctab, before: ?*struct_nctab, tcb: tabcb, name: [*c]const u8, @"opaque": ?*c_void) ?*struct_nctab;
pub extern fn nctabbed_del(nt: ?*struct_nctabbed, t: ?*struct_nctab) c_int;
pub extern fn nctab_move(nt: ?*struct_nctabbed, t: ?*struct_nctab, after: ?*struct_nctab, before: ?*struct_nctab) c_int;
pub extern fn nctab_move_right(nt: ?*struct_nctabbed, t: ?*struct_nctab) void;
pub extern fn nctab_move_left(nt: ?*struct_nctabbed, t: ?*struct_nctab) void;
pub extern fn nctabbed_rotate(nt: ?*struct_nctabbed, amt: c_int) void;
pub extern fn nctabbed_next(nt: ?*struct_nctabbed) ?*struct_nctab;
pub extern fn nctabbed_prev(nt: ?*struct_nctabbed) ?*struct_nctab;
pub extern fn nctabbed_select(nt: ?*struct_nctabbed, t: ?*struct_nctab) ?*struct_nctab;
pub extern fn nctabbed_channels(nt: ?*struct_nctabbed, noalias hdrchan: [*c]u64, noalias selchan: [*c]u64, noalias sepchan: [*c]u64) void;
pub fn nctabbed_hdrchan(arg_nt: ?*struct_nctabbed) callconv(.C) u64 {
    var nt = arg_nt;
    var ch: u64 = undefined;
    nctabbed_channels(nt, &ch, null, null);
    return ch;
}
pub fn nctabbed_selchan(arg_nt: ?*struct_nctabbed) callconv(.C) u64 {
    var nt = arg_nt;
    var ch: u64 = undefined;
    nctabbed_channels(nt, null, &ch, null);
    return ch;
}
pub fn nctabbed_sepchan(arg_nt: ?*struct_nctabbed) callconv(.C) u64 {
    var nt = arg_nt;
    var ch: u64 = undefined;
    nctabbed_channels(nt, null, null, &ch);
    return ch;
}
pub extern fn nctabbed_separator(nt: ?*struct_nctabbed) [*c]const u8;
pub extern fn nctabbed_separator_width(nt: ?*struct_nctabbed) c_int;
pub extern fn nctabbed_set_hdrchan(nt: ?*struct_nctabbed, chan: u64) void;
pub extern fn nctabbed_set_selchan(nt: ?*struct_nctabbed, chan: u64) void;
pub extern fn nctabbed_set_sepchan(nt: ?*struct_nctabbed, chan: u64) void;
pub extern fn nctab_set_cb(t: ?*struct_nctab, newcb: tabcb) tabcb;
pub extern fn nctab_set_name(t: ?*struct_nctab, newname: [*c]const u8) c_int;
pub extern fn nctab_set_userptr(t: ?*struct_nctab, newopaque: ?*c_void) ?*c_void;
pub extern fn nctabbed_set_separator(nt: ?*struct_nctabbed, separator: [*c]const u8) c_int;
pub const struct_ncplot_options = extern struct {
    maxchannels: u64,
    minchannels: u64,
    legendstyle: u16,
    gridtype: ncblitter_e,
    rangex: c_int,
    title: [*c]const u8,
    flags: u64,
};
pub const ncplot_options = struct_ncplot_options;
pub extern fn ncuplot_create(n: ?*struct_ncplane, opts: [*c]const ncplot_options, miny: u64, maxy: u64) ?*struct_ncuplot;
pub extern fn ncdplot_create(n: ?*struct_ncplane, opts: [*c]const ncplot_options, miny: f64, maxy: f64) ?*struct_ncdplot;
pub extern fn ncuplot_plane(n: ?*struct_ncuplot) ?*struct_ncplane;
pub extern fn ncdplot_plane(n: ?*struct_ncdplot) ?*struct_ncplane;
pub extern fn ncuplot_add_sample(n: ?*struct_ncuplot, x: u64, y: u64) c_int;
pub extern fn ncdplot_add_sample(n: ?*struct_ncdplot, x: u64, y: f64) c_int;
pub extern fn ncuplot_set_sample(n: ?*struct_ncuplot, x: u64, y: u64) c_int;
pub extern fn ncdplot_set_sample(n: ?*struct_ncdplot, x: u64, y: f64) c_int;
pub extern fn ncuplot_sample(n: ?*const struct_ncuplot, x: u64, y: [*c]u64) c_int;
pub extern fn ncdplot_sample(n: ?*const struct_ncdplot, x: u64, y: [*c]f64) c_int;
pub extern fn ncuplot_destroy(n: ?*struct_ncuplot) void;
pub extern fn ncdplot_destroy(n: ?*struct_ncdplot) void;
pub const ncfdplane_callback = ?fn (?*struct_ncfdplane, ?*const c_void, usize, ?*c_void) callconv(.C) c_int;
pub const ncfdplane_done_cb = ?fn (?*struct_ncfdplane, c_int, ?*c_void) callconv(.C) c_int;
pub const struct_ncfdplane_options = extern struct {
    curry: ?*c_void,
    follow: bool,
    flags: u64,
};
pub const ncfdplane_options = struct_ncfdplane_options;
pub extern fn ncfdplane_create(n: ?*struct_ncplane, opts: [*c]const ncfdplane_options, fd: c_int, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) ?*struct_ncfdplane;
pub extern fn ncfdplane_plane(n: ?*struct_ncfdplane) ?*struct_ncplane;
pub extern fn ncfdplane_destroy(n: ?*struct_ncfdplane) c_int;
pub const struct_ncsubproc_options = extern struct {
    curry: ?*c_void,
    restart_period: u64,
    flags: u64,
};
pub const ncsubproc_options = struct_ncsubproc_options;
pub extern fn ncsubproc_createv(n: ?*struct_ncplane, opts: [*c]const ncsubproc_options, bin: [*c]const u8, arg: [*c]const [*c]u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) ?*struct_ncsubproc;
pub extern fn ncsubproc_createvp(n: ?*struct_ncplane, opts: [*c]const ncsubproc_options, bin: [*c]const u8, arg: [*c]const [*c]u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) ?*struct_ncsubproc;
pub extern fn ncsubproc_createvpe(n: ?*struct_ncplane, opts: [*c]const ncsubproc_options, bin: [*c]const u8, arg: [*c]const [*c]u8, env: [*c]const [*c]u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) ?*struct_ncsubproc;
pub extern fn ncsubproc_plane(n: ?*struct_ncsubproc) ?*struct_ncplane;
pub extern fn ncsubproc_destroy(n: ?*struct_ncsubproc) c_int;
pub extern fn ncplane_qrcode(n: ?*struct_ncplane, ymax: [*c]c_int, xmax: [*c]c_int, data: ?*const c_void, len: usize) c_int;
pub const struct_ncreader_options = extern struct {
    tchannels: u64,
    tattrword: u32,
    flags: u64,
};
pub const ncreader_options = struct_ncreader_options;
pub extern fn ncreader_create(n: ?*struct_ncplane, opts: [*c]const ncreader_options) ?*struct_ncreader;
pub extern fn ncreader_clear(n: ?*struct_ncreader) c_int;
pub extern fn ncreader_plane(n: ?*struct_ncreader) ?*struct_ncplane;
pub extern fn ncreader_offer_input(n: ?*struct_ncreader, ni: [*c]const ncinput) bool;
pub extern fn ncreader_move_left(n: ?*struct_ncreader) c_int;
pub extern fn ncreader_move_right(n: ?*struct_ncreader) c_int;
pub extern fn ncreader_move_up(n: ?*struct_ncreader) c_int;
pub extern fn ncreader_move_down(n: ?*struct_ncreader) c_int;
pub extern fn ncreader_write_egc(n: ?*struct_ncreader, egc: [*c]const u8) c_int;
pub extern fn ncreader_contents(n: ?*const struct_ncreader) [*c]u8;
pub extern fn ncreader_destroy(n: ?*struct_ncreader, contents: [*c][*c]u8) void;
pub extern fn notcurses_debug(nc: ?*const struct_notcurses, debugfp: [*c]FILE) void;
pub extern fn cell_duplicate(n: ?*struct_ncplane, targ: [*c]nccell, c: [*c]const nccell) c_int;
pub extern fn cell_release(n: ?*struct_ncplane, c: [*c]nccell) void;
pub extern fn ncplane_new(n: ?*struct_ncplane, rows: c_int, cols: c_int, y: c_int, x: c_int, @"opaque": ?*c_void, name: [*c]const u8) ?*struct_ncplane;
pub extern fn ncplane_styles_set(n: ?*struct_ncplane, stylebits: c_uint) void;
pub extern fn ncplane_styles_on(n: ?*struct_ncplane, stylebits: c_uint) void;
pub extern fn ncplane_styles_off(n: ?*struct_ncplane, stylebits: c_uint) void;
pub extern fn cells_rounded_box(n: ?*struct_ncplane, styles: u32, channels: u64, ul: [*c]nccell, ur: [*c]nccell, ll: [*c]nccell, lr: [*c]nccell, hl: [*c]nccell, vl: [*c]nccell) c_int;
pub extern fn cells_double_box(n: ?*struct_ncplane, styles: u32, channels: u64, ul: [*c]nccell, ur: [*c]nccell, ll: [*c]nccell, lr: [*c]nccell, hl: [*c]nccell, vl: [*c]nccell) c_int;
pub extern fn nctablet_ncplane(t: ?*struct_nctablet) ?*struct_ncplane;
pub extern fn palette256_new(nc: ?*struct_notcurses) [*c]ncpalette;
pub extern fn palette256_use(nc: ?*struct_notcurses, p: [*c]const ncpalette) c_int;
pub extern fn palette256_free(p: [*c]ncpalette) void;
pub extern fn ncvisual_inflate(n: ?*struct_ncvisual, scale: c_int) c_int;
pub extern fn notcurses_render_to_buffer(nc: ?*struct_notcurses, buf: [*c][*c]u8, buflen: [*c]usize) c_int;
pub extern fn notcurses_render_to_file(nc: ?*struct_notcurses, fp: [*c]FILE) c_int;
pub extern fn notcurses_debug_caps(nc: ?*const struct_notcurses, debugfp: [*c]FILE) void;
pub extern fn nccell_width(n: ?*const struct_ncplane, c: [*c]const nccell) c_int;
pub extern fn ncvisual_subtitle(ncv: ?*const struct_ncvisual) [*c]u8;
pub extern fn notcurses_getc(nc: ?*struct_notcurses, ts: [*c]const struct_timespec, unused: ?*const c_void, ni: [*c]ncinput) u32;
pub extern fn ncdirect_getc(nc: ?*struct_ncdirect, ts: [*c]const struct_timespec, unused: ?*const c_void, ni: [*c]ncinput) u32;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):67:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):73:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):164:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):194:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):312:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):313:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:186:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:44:10
pub const __glibc_has_builtin = @compileError("unable to translate macro: undefined identifier `__has_builtin`"); // /usr/include/sys/cdefs.h:49:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:54:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:78:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:79:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:81:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/include/sys/cdefs.h:123:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/include/sys/cdefs.h:124:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:158:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/include/sys/cdefs.h:159:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token .LBracket"); // /usr/include/sys/cdefs.h:167:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:198:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:205:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:207:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/include/sys/cdefs.h:211:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:232:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:243:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:250:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:257:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:263:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:272:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:273:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:281:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:291:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:304:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:314:10
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:324:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:337:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:346:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:364:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:373:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:391:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:392:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/sys/cdefs.h:435:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:484:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:560:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:561:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:575:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:576:10
pub const __attr_access = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:612:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:613:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/include/sys/cdefs.h:623:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:630:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_typedef"); // /usr/include/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __exctype = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/ctype.h:155:9
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/include/ctype.h:244:10
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/bits/floatn-common.h:91:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `l`"); // /usr/include/bits/floatn-common.h:120:13
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/bits/floatn-common.h:292:13
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /media/data/Projects/Compilers_or_Interpreters/zig-linux-x86_64-0.9.0-dev.1551+8346e011c/lib/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /media/data/Projects/Compilers_or_Interpreters/zig-linux-x86_64-0.9.0-dev.1551+8346e011c/lib/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /media/data/Projects/Compilers_or_Interpreters/zig-linux-x86_64-0.9.0-dev.1551+8346e011c/lib/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /media/data/Projects/Compilers_or_Interpreters/zig-linux-x86_64-0.9.0-dev.1551+8346e011c/lib/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /media/data/Projects/Compilers_or_Interpreters/zig-linux-x86_64-0.9.0-dev.1551+8346e011c/lib/include/stdarg.h:27:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:106:9
pub const __INT64_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:106:11
pub const __UINT64_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:107:11
pub const INT64_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:252:11
pub const UINT32_C = @compileError("unable to translate macro: undefined identifier `U`"); // /usr/include/stdint.h:260:10
pub const UINT64_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:262:11
pub const INTMAX_C = @compileError("unable to translate macro: undefined identifier `L`"); // /usr/include/stdint.h:269:11
pub const UINTMAX_C = @compileError("unable to translate macro: undefined identifier `UL`"); // /usr/include/stdint.h:270:11
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got: PipeEqual"); // /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got: AmpersandEqual"); // /usr/include/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/bits/thread-shared-types.h:127:9
pub const si_pid = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:128:9
pub const si_uid = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:129:9
pub const si_timerid = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:130:9
pub const si_overrun = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:131:9
pub const si_status = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:132:9
pub const si_utime = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:133:9
pub const si_stime = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:134:9
pub const si_value = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:135:9
pub const si_int = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:136:9
pub const si_ptr = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:137:9
pub const si_addr = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:138:9
pub const si_addr_lsb = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:139:9
pub const si_lower = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:140:9
pub const si_upper = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:141:9
pub const si_pkey = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:142:9
pub const si_band = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:143:9
pub const si_fd = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:144:9
pub const si_call_addr = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:146:10
pub const si_syscall = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:147:10
pub const si_arch = @compileError("unable to translate macro: undefined identifier `_sifields`"); // /usr/include/bits/types/siginfo_t.h:148:10
pub const sigev_notify_function = @compileError("unable to translate macro: undefined identifier `_sigev_un`"); // /usr/include/bits/types/sigevent_t.h:45:9
pub const sigev_notify_attributes = @compileError("unable to translate macro: undefined identifier `_sigev_un`"); // /usr/include/bits/types/sigevent_t.h:46:9
pub const sa_handler = @compileError("unable to translate macro: undefined identifier `__sigaction_handler`"); // /usr/include/bits/sigaction.h:39:10
pub const sa_sigaction = @compileError("unable to translate macro: undefined identifier `__sigaction_handler`"); // /usr/include/bits/sigaction.h:40:10
pub const __SOCKADDR_COMMON = @compileError("unable to translate macro: undefined identifier `family`"); // /usr/include/bits/sockaddr.h:34:9
pub const __SOCKADDR_ARG = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/sys/socket.h:58:10
pub const __CONST_SOCKADDR_ARG = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/sys/socket.h:59:10
pub const SCM_SRCRT = @compileError("unable to translate macro: undefined identifier `IPV6_RXSRCRT`"); // /usr/include/bits/in.h:178:9
pub const s6_addr = @compileError("unable to translate macro: undefined identifier `__in6_u`"); // /usr/include/netinet/in.h:224:9
pub const s6_addr16 = @compileError("unable to translate macro: undefined identifier `__in6_u`"); // /usr/include/netinet/in.h:226:10
pub const s6_addr32 = @compileError("unable to translate macro: undefined identifier `__in6_u`"); // /usr/include/netinet/in.h:227:10
pub const IN6ADDR_ANY_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/netinet/in.h:234:9
pub const IN6ADDR_LOOPBACK_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/netinet/in.h:235:9
pub const IN6_IS_ADDR_UNSPECIFIED = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:415:10
pub const IN6_IS_ADDR_LOOPBACK = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:423:10
pub const IN6_IS_ADDR_LINKLOCAL = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:431:10
pub const IN6_IS_ADDR_SITELOCAL = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:436:10
pub const IN6_IS_ADDR_V4MAPPED = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:441:10
pub const IN6_IS_ADDR_V4COMPAT = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:448:10
pub const IN6_ARE_ADDR_EQUAL = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/netinet/in.h:456:10
pub const IN6_IS_ADDR_MULTICAST = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:503:9
pub const IN6_IS_ADDR_MC_NODELOCAL = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:515:9
pub const IN6_IS_ADDR_MC_LINKLOCAL = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:519:9
pub const IN6_IS_ADDR_MC_SITELOCAL = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:523:9
pub const IN6_IS_ADDR_MC_ORGLOCAL = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:527:9
pub const IN6_IS_ADDR_MC_GLOBAL = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /usr/include/netinet/in.h:531:9
pub const NCBRAILLEEGCS = @compileError("macro tokenizing failed: TODO unicode escape sequences"); // /usr/include/notcurses/ncseqs.h:59:9
pub const RESTRICT = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /usr/include/notcurses/notcurses.h:23:9
pub const API = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/notcurses/notcurses.h:27:9
pub const ALLOC = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/notcurses/notcurses.h:31:9
pub const CELL_INITIALIZER = @compileError("unable to translate macro: undefined identifier `wcwidth`"); // /usr/include/notcurses/notcurses.h:662:9
pub const CELL_CHAR_INITIALIZER = @compileError("unable to translate macro: undefined identifier `wcwidth`"); // /usr/include/notcurses/notcurses.h:665:9
pub const CELL_TRIVIAL_INITIALIZER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/include/notcurses/notcurses.h:668:9
pub const IPREFIXFMT = @compileError("unable to translate macro: undefined identifier `NCMETRIXFWIDTH`"); // /usr/include/notcurses/notcurses.h:3303:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "13.0.0 (git@github.com:ziglang/zig-bootstrap.git 4cced909c6506a6eb96e55ba5c31f883fe8208a1)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.0 (git@github.com:ziglang/zig-bootstrap.git 4cced909c6506a6eb96e55ba5c31f883fe8208a1)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver1 = @as(c_int, 1);
pub const __znver1__ = @as(c_int, 1);
pub const __tune_znver1__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const NOTCURSES_NOTCURSES = "";
pub const _TIME_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 34);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*c_void;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __USE_EXTERN_INLINES = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*c_void, @as(c_int, 0));
pub const _BITS_TIME_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*c_void;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __clock_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = LO;
        break :blk HI;
    };
}
pub const __clockid_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const __pid_t_defined = "";
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf(((year % @as(c_int, 4)) == @as(c_int, 0)) and (((year % @as(c_int, 100)) != @as(c_int, 0)) or ((year % @as(c_int, 400)) == @as(c_int, 0)))) {
    return ((year % @as(c_int, 4)) == @as(c_int, 0)) and (((year % @as(c_int, 100)) != @as(c_int, 0)) or ((year % @as(c_int, 400)) == @as(c_int, 0)));
}
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@import("std").zig.c_translation.cast(c_int, c)] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return __ctype_b_loc().*[@import("std").zig.c_translation.cast(c_int, c)] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    return c & @as(c_int, 0x7f);
}
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@import("std").zig.c_translation.cast(c_int, c)] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return locale.*.__ctype_b[@import("std").zig.c_translation.cast(c_int, c)] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    return blk: {
        _ = l;
        break :blk __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    return blk: {
        _ = l;
        break :blk __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    return __toascii_l(c, l);
}
pub const _WCHAR_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const __need___va_list = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const __wint_t_defined = @as(c_int, 1);
pub const _WINT_T = @as(c_int, 1);
pub const __mbstate_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WEOF = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const __attr_dealloc_fclose = "";
pub const _STDIO_H = @as(c_int, 1);
pub const _____fpos_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const _BITS_STDIO_H = @as(c_int, 1);
pub const __STDIO_INLINE = __extern_inline;
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @as(c_int, 1024) / (@as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(d / __NFDBITS) {
    return d / __NFDBITS;
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << (d % __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = __PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _STRING_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const _SIGNAL_H = "";
pub const _BITS_SIGNUM_GENERIC_H = @as(c_int, 1);
pub const SIG_ERR = @import("std").zig.c_translation.cast(__sighandler_t, -@as(c_int, 1));
pub const SIG_DFL = @import("std").zig.c_translation.cast(__sighandler_t, @as(c_int, 0));
pub const SIG_IGN = @import("std").zig.c_translation.cast(__sighandler_t, @as(c_int, 1));
pub const SIGINT = @as(c_int, 2);
pub const SIGILL = @as(c_int, 4);
pub const SIGABRT = @as(c_int, 6);
pub const SIGFPE = @as(c_int, 8);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGTERM = @as(c_int, 15);
pub const SIGHUP = @as(c_int, 1);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGKILL = @as(c_int, 9);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGIO = SIGPOLL;
pub const SIGIOT = SIGABRT;
pub const SIGCLD = SIGCHLD;
pub const _BITS_SIGNUM_ARCH_H = @as(c_int, 1);
pub const SIGSTKFLT = @as(c_int, 16);
pub const SIGPWR = @as(c_int, 30);
pub const SIGBUS = @as(c_int, 7);
pub const SIGSYS = @as(c_int, 31);
pub const SIGURG = @as(c_int, 23);
pub const SIGSTOP = @as(c_int, 19);
pub const SIGTSTP = @as(c_int, 20);
pub const SIGCONT = @as(c_int, 18);
pub const SIGCHLD = @as(c_int, 17);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGPOLL = @as(c_int, 29);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGUSR1 = @as(c_int, 10);
pub const SIGUSR2 = @as(c_int, 12);
pub const SIGWINCH = @as(c_int, 28);
pub const __SIGRTMIN = @as(c_int, 32);
pub const __SIGRTMAX = @as(c_int, 64);
pub const _NSIG = __SIGRTMAX + @as(c_int, 1);
pub const __sig_atomic_t_defined = @as(c_int, 1);
pub const __siginfo_t_defined = @as(c_int, 1);
pub const ____sigval_t_defined = "";
pub const __SI_MAX_SIZE = @as(c_int, 128);
pub const __SI_PAD_SIZE = (__SI_MAX_SIZE / @import("std").zig.c_translation.sizeof(c_int)) - @as(c_int, 4);
pub const _BITS_SIGINFO_ARCH_H = @as(c_int, 1);
pub const __SI_ALIGNMENT = "";
pub const __SI_BAND_TYPE = c_long;
pub const __SI_CLOCK_T = __clock_t;
pub const __SI_ERRNO_THEN_CODE = @as(c_int, 1);
pub const __SI_HAVE_SIGSYS = @as(c_int, 1);
pub const __SI_SIGFAULT_ADDL = "";
pub const _BITS_SIGINFO_CONSTS_H = @as(c_int, 1);
pub const __SI_ASYNCIO_AFTER_SIGIO = @as(c_int, 1);
pub const __sigval_t_defined = "";
pub const __sigevent_t_defined = @as(c_int, 1);
pub const __SIGEV_MAX_SIZE = @as(c_int, 64);
pub const __SIGEV_PAD_SIZE = (__SIGEV_MAX_SIZE / @import("std").zig.c_translation.sizeof(c_int)) - @as(c_int, 4);
pub const _BITS_SIGEVENT_CONSTS_H = @as(c_int, 1);
pub inline fn sigmask(sig: anytype) @TypeOf(__glibc_macro_warning("sigmask is deprecated")(@import("std").zig.c_translation.cast(c_int, @as(c_uint, 1) << (sig - @as(c_int, 1))))) {
    return __glibc_macro_warning("sigmask is deprecated")(@import("std").zig.c_translation.cast(c_int, @as(c_uint, 1) << (sig - @as(c_int, 1))));
}
pub const NSIG = _NSIG;
pub const _BITS_SIGACTION_H = @as(c_int, 1);
pub const SA_NOCLDSTOP = @as(c_int, 1);
pub const SA_NOCLDWAIT = @as(c_int, 2);
pub const SA_SIGINFO = @as(c_int, 4);
pub const SA_ONSTACK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hexadecimal);
pub const SA_RESTART = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hexadecimal);
pub const SA_NODEFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const SA_RESETHAND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub const SA_INTERRUPT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const SA_NOMASK = SA_NODEFER;
pub const SA_ONESHOT = SA_RESETHAND;
pub const SA_STACK = SA_ONSTACK;
pub const SIG_BLOCK = @as(c_int, 0);
pub const SIG_UNBLOCK = @as(c_int, 1);
pub const SIG_SETMASK = @as(c_int, 2);
pub const _BITS_SIGCONTEXT_H = @as(c_int, 1);
pub const FP_XSTATE_MAGIC1 = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x46505853, .hexadecimal);
pub const FP_XSTATE_MAGIC2 = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x46505845, .hexadecimal);
pub const FP_XSTATE_MAGIC2_SIZE = @import("std").zig.c_translation.sizeof(FP_XSTATE_MAGIC2);
pub const __stack_t_defined = @as(c_int, 1);
pub const _SYS_UCONTEXT_H = @as(c_int, 1);
pub inline fn __ctx(fld: anytype) @TypeOf(fld) {
    return fld;
}
pub const __NGREG = @as(c_int, 23);
pub const NGREG = __NGREG;
pub const _BITS_SIGSTACK_H = @as(c_int, 1);
pub const MINSIGSTKSZ = @as(c_int, 2048);
pub const SIGSTKSZ = @as(c_int, 8192);
pub const _BITS_SS_FLAGS_H = @as(c_int, 1);
pub const __sigstack_defined = @as(c_int, 1);
pub const _BITS_SIGTHREAD_H = @as(c_int, 1);
pub const SIGRTMIN = __libc_current_sigrtmin();
pub const SIGRTMAX = __libc_current_sigrtmax();
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const LLONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULLONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const NOTCURSES_NCPORT = "";
pub const _NETINET_IN_H = @as(c_int, 1);
pub const _SYS_SOCKET_H = @as(c_int, 1);
pub const __iovec_defined = @as(c_int, 1);
pub const __BITS_SOCKET_H = "";
pub const __socklen_t_defined = "";
pub const PF_UNSPEC = @as(c_int, 0);
pub const PF_LOCAL = @as(c_int, 1);
pub const PF_UNIX = PF_LOCAL;
pub const PF_FILE = PF_LOCAL;
pub const PF_INET = @as(c_int, 2);
pub const PF_AX25 = @as(c_int, 3);
pub const PF_IPX = @as(c_int, 4);
pub const PF_APPLETALK = @as(c_int, 5);
pub const PF_NETROM = @as(c_int, 6);
pub const PF_BRIDGE = @as(c_int, 7);
pub const PF_ATMPVC = @as(c_int, 8);
pub const PF_X25 = @as(c_int, 9);
pub const PF_INET6 = @as(c_int, 10);
pub const PF_ROSE = @as(c_int, 11);
pub const PF_DECnet = @as(c_int, 12);
pub const PF_NETBEUI = @as(c_int, 13);
pub const PF_SECURITY = @as(c_int, 14);
pub const PF_KEY = @as(c_int, 15);
pub const PF_NETLINK = @as(c_int, 16);
pub const PF_ROUTE = PF_NETLINK;
pub const PF_PACKET = @as(c_int, 17);
pub const PF_ASH = @as(c_int, 18);
pub const PF_ECONET = @as(c_int, 19);
pub const PF_ATMSVC = @as(c_int, 20);
pub const PF_RDS = @as(c_int, 21);
pub const PF_SNA = @as(c_int, 22);
pub const PF_IRDA = @as(c_int, 23);
pub const PF_PPPOX = @as(c_int, 24);
pub const PF_WANPIPE = @as(c_int, 25);
pub const PF_LLC = @as(c_int, 26);
pub const PF_IB = @as(c_int, 27);
pub const PF_MPLS = @as(c_int, 28);
pub const PF_CAN = @as(c_int, 29);
pub const PF_TIPC = @as(c_int, 30);
pub const PF_BLUETOOTH = @as(c_int, 31);
pub const PF_IUCV = @as(c_int, 32);
pub const PF_RXRPC = @as(c_int, 33);
pub const PF_ISDN = @as(c_int, 34);
pub const PF_PHONET = @as(c_int, 35);
pub const PF_IEEE802154 = @as(c_int, 36);
pub const PF_CAIF = @as(c_int, 37);
pub const PF_ALG = @as(c_int, 38);
pub const PF_NFC = @as(c_int, 39);
pub const PF_VSOCK = @as(c_int, 40);
pub const PF_KCM = @as(c_int, 41);
pub const PF_QIPCRTR = @as(c_int, 42);
pub const PF_SMC = @as(c_int, 43);
pub const PF_XDP = @as(c_int, 44);
pub const PF_MAX = @as(c_int, 45);
pub const AF_UNSPEC = PF_UNSPEC;
pub const AF_LOCAL = PF_LOCAL;
pub const AF_UNIX = PF_UNIX;
pub const AF_FILE = PF_FILE;
pub const AF_INET = PF_INET;
pub const AF_AX25 = PF_AX25;
pub const AF_IPX = PF_IPX;
pub const AF_APPLETALK = PF_APPLETALK;
pub const AF_NETROM = PF_NETROM;
pub const AF_BRIDGE = PF_BRIDGE;
pub const AF_ATMPVC = PF_ATMPVC;
pub const AF_X25 = PF_X25;
pub const AF_INET6 = PF_INET6;
pub const AF_ROSE = PF_ROSE;
pub const AF_DECnet = PF_DECnet;
pub const AF_NETBEUI = PF_NETBEUI;
pub const AF_SECURITY = PF_SECURITY;
pub const AF_KEY = PF_KEY;
pub const AF_NETLINK = PF_NETLINK;
pub const AF_ROUTE = PF_ROUTE;
pub const AF_PACKET = PF_PACKET;
pub const AF_ASH = PF_ASH;
pub const AF_ECONET = PF_ECONET;
pub const AF_ATMSVC = PF_ATMSVC;
pub const AF_RDS = PF_RDS;
pub const AF_SNA = PF_SNA;
pub const AF_IRDA = PF_IRDA;
pub const AF_PPPOX = PF_PPPOX;
pub const AF_WANPIPE = PF_WANPIPE;
pub const AF_LLC = PF_LLC;
pub const AF_IB = PF_IB;
pub const AF_MPLS = PF_MPLS;
pub const AF_CAN = PF_CAN;
pub const AF_TIPC = PF_TIPC;
pub const AF_BLUETOOTH = PF_BLUETOOTH;
pub const AF_IUCV = PF_IUCV;
pub const AF_RXRPC = PF_RXRPC;
pub const AF_ISDN = PF_ISDN;
pub const AF_PHONET = PF_PHONET;
pub const AF_IEEE802154 = PF_IEEE802154;
pub const AF_CAIF = PF_CAIF;
pub const AF_ALG = PF_ALG;
pub const AF_NFC = PF_NFC;
pub const AF_VSOCK = PF_VSOCK;
pub const AF_KCM = PF_KCM;
pub const AF_QIPCRTR = PF_QIPCRTR;
pub const AF_SMC = PF_SMC;
pub const AF_XDP = PF_XDP;
pub const AF_MAX = PF_MAX;
pub const SOL_RAW = @as(c_int, 255);
pub const SOL_DECNET = @as(c_int, 261);
pub const SOL_X25 = @as(c_int, 262);
pub const SOL_PACKET = @as(c_int, 263);
pub const SOL_ATM = @as(c_int, 264);
pub const SOL_AAL = @as(c_int, 265);
pub const SOL_IRDA = @as(c_int, 266);
pub const SOL_NETBEUI = @as(c_int, 267);
pub const SOL_LLC = @as(c_int, 268);
pub const SOL_DCCP = @as(c_int, 269);
pub const SOL_NETLINK = @as(c_int, 270);
pub const SOL_TIPC = @as(c_int, 271);
pub const SOL_RXRPC = @as(c_int, 272);
pub const SOL_PPPOL2TP = @as(c_int, 273);
pub const SOL_BLUETOOTH = @as(c_int, 274);
pub const SOL_PNPIPE = @as(c_int, 275);
pub const SOL_RDS = @as(c_int, 276);
pub const SOL_IUCV = @as(c_int, 277);
pub const SOL_CAIF = @as(c_int, 278);
pub const SOL_ALG = @as(c_int, 279);
pub const SOL_NFC = @as(c_int, 280);
pub const SOL_KCM = @as(c_int, 281);
pub const SOL_TLS = @as(c_int, 282);
pub const SOL_XDP = @as(c_int, 283);
pub const SOMAXCONN = @as(c_int, 4096);
pub const _BITS_SOCKADDR_H = @as(c_int, 1);
pub const __SOCKADDR_COMMON_SIZE = @import("std").zig.c_translation.sizeof(c_ushort);
pub const _SS_SIZE = @as(c_int, 128);
pub const __ss_aligntype = c_ulong;
pub const _SS_PADSIZE = (_SS_SIZE - __SOCKADDR_COMMON_SIZE) - @import("std").zig.c_translation.sizeof(__ss_aligntype);
pub inline fn CMSG_DATA(cmsg: anytype) @TypeOf(cmsg.*.__cmsg_data) {
    return cmsg.*.__cmsg_data;
}
pub inline fn CMSG_NXTHDR(mhdr: anytype, cmsg: anytype) @TypeOf(__cmsg_nxthdr(mhdr, cmsg)) {
    return __cmsg_nxthdr(mhdr, cmsg);
}
pub inline fn CMSG_FIRSTHDR(mhdr: anytype) @TypeOf(if (@import("std").zig.c_translation.cast(usize, mhdr.*.msg_controllen) >= @import("std").zig.c_translation.sizeof(struct_cmsghdr)) @import("std").zig.c_translation.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else @import("std").zig.c_translation.cast([*c]struct_cmsghdr, @as(c_int, 0))) {
    return if (@import("std").zig.c_translation.cast(usize, mhdr.*.msg_controllen) >= @import("std").zig.c_translation.sizeof(struct_cmsghdr)) @import("std").zig.c_translation.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else @import("std").zig.c_translation.cast([*c]struct_cmsghdr, @as(c_int, 0));
}
pub inline fn CMSG_ALIGN(len: anytype) @TypeOf(((len + @import("std").zig.c_translation.sizeof(usize)) - @as(c_int, 1)) & @import("std").zig.c_translation.cast(usize, ~(@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)))) {
    return ((len + @import("std").zig.c_translation.sizeof(usize)) - @as(c_int, 1)) & @import("std").zig.c_translation.cast(usize, ~(@import("std").zig.c_translation.sizeof(usize) - @as(c_int, 1)));
}
pub inline fn CMSG_SPACE(len: anytype) @TypeOf(CMSG_ALIGN(len) + CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr))) {
    return CMSG_ALIGN(len) + CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr));
}
pub inline fn CMSG_LEN(len: anytype) @TypeOf(CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr)) + len) {
    return CMSG_ALIGN(@import("std").zig.c_translation.sizeof(struct_cmsghdr)) + len;
}
pub const _EXTERN_INLINE = __extern_inline;
pub const __ASM_GENERIC_SOCKET_H = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const __ASM_GENERIC_SOCKIOS_H = "";
pub const FIOSETOWN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8901, .hexadecimal);
pub const SIOCSPGRP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8902, .hexadecimal);
pub const FIOGETOWN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8903, .hexadecimal);
pub const SIOCGPGRP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8904, .hexadecimal);
pub const SIOCATMARK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8905, .hexadecimal);
pub const SIOCGSTAMP_OLD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8906, .hexadecimal);
pub const SIOCGSTAMPNS_OLD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8907, .hexadecimal);
pub const SOL_SOCKET = @as(c_int, 1);
pub const SO_DEBUG = @as(c_int, 1);
pub const SO_REUSEADDR = @as(c_int, 2);
pub const SO_TYPE = @as(c_int, 3);
pub const SO_ERROR = @as(c_int, 4);
pub const SO_DONTROUTE = @as(c_int, 5);
pub const SO_BROADCAST = @as(c_int, 6);
pub const SO_SNDBUF = @as(c_int, 7);
pub const SO_RCVBUF = @as(c_int, 8);
pub const SO_SNDBUFFORCE = @as(c_int, 32);
pub const SO_RCVBUFFORCE = @as(c_int, 33);
pub const SO_KEEPALIVE = @as(c_int, 9);
pub const SO_OOBINLINE = @as(c_int, 10);
pub const SO_NO_CHECK = @as(c_int, 11);
pub const SO_PRIORITY = @as(c_int, 12);
pub const SO_LINGER = @as(c_int, 13);
pub const SO_BSDCOMPAT = @as(c_int, 14);
pub const SO_REUSEPORT = @as(c_int, 15);
pub const SO_PASSCRED = @as(c_int, 16);
pub const SO_PEERCRED = @as(c_int, 17);
pub const SO_RCVLOWAT = @as(c_int, 18);
pub const SO_SNDLOWAT = @as(c_int, 19);
pub const SO_RCVTIMEO_OLD = @as(c_int, 20);
pub const SO_SNDTIMEO_OLD = @as(c_int, 21);
pub const SO_SECURITY_AUTHENTICATION = @as(c_int, 22);
pub const SO_SECURITY_ENCRYPTION_TRANSPORT = @as(c_int, 23);
pub const SO_SECURITY_ENCRYPTION_NETWORK = @as(c_int, 24);
pub const SO_BINDTODEVICE = @as(c_int, 25);
pub const SO_ATTACH_FILTER = @as(c_int, 26);
pub const SO_DETACH_FILTER = @as(c_int, 27);
pub const SO_GET_FILTER = SO_ATTACH_FILTER;
pub const SO_PEERNAME = @as(c_int, 28);
pub const SO_ACCEPTCONN = @as(c_int, 30);
pub const SO_PEERSEC = @as(c_int, 31);
pub const SO_PASSSEC = @as(c_int, 34);
pub const SO_MARK = @as(c_int, 36);
pub const SO_PROTOCOL = @as(c_int, 38);
pub const SO_DOMAIN = @as(c_int, 39);
pub const SO_RXQ_OVFL = @as(c_int, 40);
pub const SO_WIFI_STATUS = @as(c_int, 41);
pub const SCM_WIFI_STATUS = SO_WIFI_STATUS;
pub const SO_PEEK_OFF = @as(c_int, 42);
pub const SO_NOFCS = @as(c_int, 43);
pub const SO_LOCK_FILTER = @as(c_int, 44);
pub const SO_SELECT_ERR_QUEUE = @as(c_int, 45);
pub const SO_BUSY_POLL = @as(c_int, 46);
pub const SO_MAX_PACING_RATE = @as(c_int, 47);
pub const SO_BPF_EXTENSIONS = @as(c_int, 48);
pub const SO_INCOMING_CPU = @as(c_int, 49);
pub const SO_ATTACH_BPF = @as(c_int, 50);
pub const SO_DETACH_BPF = SO_DETACH_FILTER;
pub const SO_ATTACH_REUSEPORT_CBPF = @as(c_int, 51);
pub const SO_ATTACH_REUSEPORT_EBPF = @as(c_int, 52);
pub const SO_CNX_ADVICE = @as(c_int, 53);
pub const SCM_TIMESTAMPING_OPT_STATS = @as(c_int, 54);
pub const SO_MEMINFO = @as(c_int, 55);
pub const SO_INCOMING_NAPI_ID = @as(c_int, 56);
pub const SO_COOKIE = @as(c_int, 57);
pub const SCM_TIMESTAMPING_PKTINFO = @as(c_int, 58);
pub const SO_PEERGROUPS = @as(c_int, 59);
pub const SO_ZEROCOPY = @as(c_int, 60);
pub const SO_TXTIME = @as(c_int, 61);
pub const SCM_TXTIME = SO_TXTIME;
pub const SO_BINDTOIFINDEX = @as(c_int, 62);
pub const SO_TIMESTAMP_OLD = @as(c_int, 29);
pub const SO_TIMESTAMPNS_OLD = @as(c_int, 35);
pub const SO_TIMESTAMPING_OLD = @as(c_int, 37);
pub const SO_TIMESTAMP_NEW = @as(c_int, 63);
pub const SO_TIMESTAMPNS_NEW = @as(c_int, 64);
pub const SO_TIMESTAMPING_NEW = @as(c_int, 65);
pub const SO_RCVTIMEO_NEW = @as(c_int, 66);
pub const SO_SNDTIMEO_NEW = @as(c_int, 67);
pub const SO_DETACH_REUSEPORT_BPF = @as(c_int, 68);
pub const SO_PREFER_BUSY_POLL = @as(c_int, 69);
pub const SO_BUSY_POLL_BUDGET = @as(c_int, 70);
pub const SO_NETNS_COOKIE = @as(c_int, 71);
pub const SO_TIMESTAMP = SO_TIMESTAMP_OLD;
pub const SO_TIMESTAMPNS = SO_TIMESTAMPNS_OLD;
pub const SO_TIMESTAMPING = SO_TIMESTAMPING_OLD;
pub const SO_RCVTIMEO = SO_RCVTIMEO_OLD;
pub const SO_SNDTIMEO = SO_SNDTIMEO_OLD;
pub const SCM_TIMESTAMP = SO_TIMESTAMP;
pub const SCM_TIMESTAMPNS = SO_TIMESTAMPNS;
pub const SCM_TIMESTAMPING = SO_TIMESTAMPING;
pub const __osockaddr_defined = @as(c_int, 1);
pub const __USE_KERNEL_IPV6_DEFS = @as(c_int, 0);
pub const IP_OPTIONS = @as(c_int, 4);
pub const IP_HDRINCL = @as(c_int, 3);
pub const IP_TOS = @as(c_int, 1);
pub const IP_TTL = @as(c_int, 2);
pub const IP_RECVOPTS = @as(c_int, 6);
pub const IP_RECVRETOPTS = IP_RETOPTS;
pub const IP_RETOPTS = @as(c_int, 7);
pub const IP_MULTICAST_IF = @as(c_int, 32);
pub const IP_MULTICAST_TTL = @as(c_int, 33);
pub const IP_MULTICAST_LOOP = @as(c_int, 34);
pub const IP_ADD_MEMBERSHIP = @as(c_int, 35);
pub const IP_DROP_MEMBERSHIP = @as(c_int, 36);
pub const IP_UNBLOCK_SOURCE = @as(c_int, 37);
pub const IP_BLOCK_SOURCE = @as(c_int, 38);
pub const IP_ADD_SOURCE_MEMBERSHIP = @as(c_int, 39);
pub const IP_DROP_SOURCE_MEMBERSHIP = @as(c_int, 40);
pub const IP_MSFILTER = @as(c_int, 41);
pub const MCAST_JOIN_GROUP = @as(c_int, 42);
pub const MCAST_BLOCK_SOURCE = @as(c_int, 43);
pub const MCAST_UNBLOCK_SOURCE = @as(c_int, 44);
pub const MCAST_LEAVE_GROUP = @as(c_int, 45);
pub const MCAST_JOIN_SOURCE_GROUP = @as(c_int, 46);
pub const MCAST_LEAVE_SOURCE_GROUP = @as(c_int, 47);
pub const MCAST_MSFILTER = @as(c_int, 48);
pub const IP_MULTICAST_ALL = @as(c_int, 49);
pub const IP_UNICAST_IF = @as(c_int, 50);
pub const MCAST_EXCLUDE = @as(c_int, 0);
pub const MCAST_INCLUDE = @as(c_int, 1);
pub const IP_ROUTER_ALERT = @as(c_int, 5);
pub const IP_PKTINFO = @as(c_int, 8);
pub const IP_PKTOPTIONS = @as(c_int, 9);
pub const IP_PMTUDISC = @as(c_int, 10);
pub const IP_MTU_DISCOVER = @as(c_int, 10);
pub const IP_RECVERR = @as(c_int, 11);
pub const IP_RECVTTL = @as(c_int, 12);
pub const IP_RECVTOS = @as(c_int, 13);
pub const IP_MTU = @as(c_int, 14);
pub const IP_FREEBIND = @as(c_int, 15);
pub const IP_IPSEC_POLICY = @as(c_int, 16);
pub const IP_XFRM_POLICY = @as(c_int, 17);
pub const IP_PASSSEC = @as(c_int, 18);
pub const IP_TRANSPARENT = @as(c_int, 19);
pub const IP_ORIGDSTADDR = @as(c_int, 20);
pub const IP_RECVORIGDSTADDR = IP_ORIGDSTADDR;
pub const IP_MINTTL = @as(c_int, 21);
pub const IP_NODEFRAG = @as(c_int, 22);
pub const IP_CHECKSUM = @as(c_int, 23);
pub const IP_BIND_ADDRESS_NO_PORT = @as(c_int, 24);
pub const IP_RECVFRAGSIZE = @as(c_int, 25);
pub const IP_RECVERR_RFC4884 = @as(c_int, 26);
pub const IP_PMTUDISC_DONT = @as(c_int, 0);
pub const IP_PMTUDISC_WANT = @as(c_int, 1);
pub const IP_PMTUDISC_DO = @as(c_int, 2);
pub const IP_PMTUDISC_PROBE = @as(c_int, 3);
pub const IP_PMTUDISC_INTERFACE = @as(c_int, 4);
pub const IP_PMTUDISC_OMIT = @as(c_int, 5);
pub const SOL_IP = @as(c_int, 0);
pub const IP_DEFAULT_MULTICAST_TTL = @as(c_int, 1);
pub const IP_DEFAULT_MULTICAST_LOOP = @as(c_int, 1);
pub const IP_MAX_MEMBERSHIPS = @as(c_int, 20);
pub const IPV6_ADDRFORM = @as(c_int, 1);
pub const IPV6_2292PKTINFO = @as(c_int, 2);
pub const IPV6_2292HOPOPTS = @as(c_int, 3);
pub const IPV6_2292DSTOPTS = @as(c_int, 4);
pub const IPV6_2292RTHDR = @as(c_int, 5);
pub const IPV6_2292PKTOPTIONS = @as(c_int, 6);
pub const IPV6_CHECKSUM = @as(c_int, 7);
pub const IPV6_2292HOPLIMIT = @as(c_int, 8);
pub const IPV6_NEXTHOP = @as(c_int, 9);
pub const IPV6_AUTHHDR = @as(c_int, 10);
pub const IPV6_UNICAST_HOPS = @as(c_int, 16);
pub const IPV6_MULTICAST_IF = @as(c_int, 17);
pub const IPV6_MULTICAST_HOPS = @as(c_int, 18);
pub const IPV6_MULTICAST_LOOP = @as(c_int, 19);
pub const IPV6_JOIN_GROUP = @as(c_int, 20);
pub const IPV6_LEAVE_GROUP = @as(c_int, 21);
pub const IPV6_ROUTER_ALERT = @as(c_int, 22);
pub const IPV6_MTU_DISCOVER = @as(c_int, 23);
pub const IPV6_MTU = @as(c_int, 24);
pub const IPV6_RECVERR = @as(c_int, 25);
pub const IPV6_V6ONLY = @as(c_int, 26);
pub const IPV6_JOIN_ANYCAST = @as(c_int, 27);
pub const IPV6_LEAVE_ANYCAST = @as(c_int, 28);
pub const IPV6_MULTICAST_ALL = @as(c_int, 29);
pub const IPV6_ROUTER_ALERT_ISOLATE = @as(c_int, 30);
pub const IPV6_RECVERR_RFC4884 = @as(c_int, 31);
pub const IPV6_IPSEC_POLICY = @as(c_int, 34);
pub const IPV6_XFRM_POLICY = @as(c_int, 35);
pub const IPV6_HDRINCL = @as(c_int, 36);
pub const IPV6_RECVPKTINFO = @as(c_int, 49);
pub const IPV6_PKTINFO = @as(c_int, 50);
pub const IPV6_RECVHOPLIMIT = @as(c_int, 51);
pub const IPV6_HOPLIMIT = @as(c_int, 52);
pub const IPV6_RECVHOPOPTS = @as(c_int, 53);
pub const IPV6_HOPOPTS = @as(c_int, 54);
pub const IPV6_RTHDRDSTOPTS = @as(c_int, 55);
pub const IPV6_RECVRTHDR = @as(c_int, 56);
pub const IPV6_RTHDR = @as(c_int, 57);
pub const IPV6_RECVDSTOPTS = @as(c_int, 58);
pub const IPV6_DSTOPTS = @as(c_int, 59);
pub const IPV6_RECVPATHMTU = @as(c_int, 60);
pub const IPV6_PATHMTU = @as(c_int, 61);
pub const IPV6_DONTFRAG = @as(c_int, 62);
pub const IPV6_RECVTCLASS = @as(c_int, 66);
pub const IPV6_TCLASS = @as(c_int, 67);
pub const IPV6_AUTOFLOWLABEL = @as(c_int, 70);
pub const IPV6_ADDR_PREFERENCES = @as(c_int, 72);
pub const IPV6_MINHOPCOUNT = @as(c_int, 73);
pub const IPV6_ORIGDSTADDR = @as(c_int, 74);
pub const IPV6_RECVORIGDSTADDR = IPV6_ORIGDSTADDR;
pub const IPV6_TRANSPARENT = @as(c_int, 75);
pub const IPV6_UNICAST_IF = @as(c_int, 76);
pub const IPV6_RECVFRAGSIZE = @as(c_int, 77);
pub const IPV6_FREEBIND = @as(c_int, 78);
pub const IPV6_ADD_MEMBERSHIP = IPV6_JOIN_GROUP;
pub const IPV6_DROP_MEMBERSHIP = IPV6_LEAVE_GROUP;
pub const IPV6_RXHOPOPTS = IPV6_HOPOPTS;
pub const IPV6_RXDSTOPTS = IPV6_DSTOPTS;
pub const IPV6_PMTUDISC_DONT = @as(c_int, 0);
pub const IPV6_PMTUDISC_WANT = @as(c_int, 1);
pub const IPV6_PMTUDISC_DO = @as(c_int, 2);
pub const IPV6_PMTUDISC_PROBE = @as(c_int, 3);
pub const IPV6_PMTUDISC_INTERFACE = @as(c_int, 4);
pub const IPV6_PMTUDISC_OMIT = @as(c_int, 5);
pub const SOL_IPV6 = @as(c_int, 41);
pub const SOL_ICMPV6 = @as(c_int, 58);
pub const IPV6_RTHDR_LOOSE = @as(c_int, 0);
pub const IPV6_RTHDR_STRICT = @as(c_int, 1);
pub const IPV6_RTHDR_TYPE_0 = @as(c_int, 0);
pub inline fn IN_CLASSA(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal)) == @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal)) == @as(c_int, 0);
}
pub const IN_CLASSA_NET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff000000, .hexadecimal);
pub const IN_CLASSA_NSHIFT = @as(c_int, 24);
pub const IN_CLASSA_HOST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal) & ~IN_CLASSA_NET;
pub const IN_CLASSA_MAX = @as(c_int, 128);
pub inline fn IN_CLASSB(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
}
pub const IN_CLASSB_NET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff0000, .hexadecimal);
pub const IN_CLASSB_NSHIFT = @as(c_int, 16);
pub const IN_CLASSB_HOST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal) & ~IN_CLASSB_NET;
pub const IN_CLASSB_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub inline fn IN_CLASSC(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hexadecimal);
}
pub const IN_CLASSC_NET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffff00, .hexadecimal);
pub const IN_CLASSC_NSHIFT = @as(c_int, 8);
pub const IN_CLASSC_HOST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal) & ~IN_CLASSC_NET;
pub inline fn IN_CLASSD(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal);
}
pub inline fn IN_MULTICAST(a: anytype) @TypeOf(IN_CLASSD(a)) {
    return IN_CLASSD(a);
}
pub inline fn IN_EXPERIMENTAL(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal);
}
pub inline fn IN_BADCLASS(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast(in_addr_t, a) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal);
}
pub const INADDR_ANY = @import("std").zig.c_translation.cast(in_addr_t, @as(c_int, 0x00000000));
pub const INADDR_BROADCAST = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal));
pub const INADDR_NONE = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal));
pub const IN_LOOPBACKNET = @as(c_int, 127);
pub const INADDR_LOOPBACK = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f000001, .hexadecimal));
pub const INADDR_UNSPEC_GROUP = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000000, .hexadecimal));
pub const INADDR_ALLHOSTS_GROUP = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000001, .hexadecimal));
pub const INADDR_ALLRTRS_GROUP = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe0000002, .hexadecimal));
pub const INADDR_ALLSNOOPERS_GROUP = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe000006a, .hexadecimal));
pub const INADDR_MAX_LOCAL_GROUP = @import("std").zig.c_translation.cast(in_addr_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe00000ff, .hexadecimal));
pub const INET_ADDRSTRLEN = @as(c_int, 16);
pub const INET6_ADDRSTRLEN = @as(c_int, 46);
pub inline fn IP_MSFILTER_SIZE(numsrc: anytype) @TypeOf((@import("std").zig.c_translation.sizeof(struct_ip_msfilter) - @import("std").zig.c_translation.sizeof(struct_in_addr)) + (numsrc * @import("std").zig.c_translation.sizeof(struct_in_addr))) {
    return (@import("std").zig.c_translation.sizeof(struct_ip_msfilter) - @import("std").zig.c_translation.sizeof(struct_in_addr)) + (numsrc * @import("std").zig.c_translation.sizeof(struct_in_addr));
}
pub inline fn GROUP_FILTER_SIZE(numsrc: anytype) @TypeOf((@import("std").zig.c_translation.sizeof(struct_group_filter) - @import("std").zig.c_translation.sizeof(struct_sockaddr_storage)) + (numsrc * @import("std").zig.c_translation.sizeof(struct_sockaddr_storage))) {
    return (@import("std").zig.c_translation.sizeof(struct_group_filter) - @import("std").zig.c_translation.sizeof(struct_sockaddr_storage)) + (numsrc * @import("std").zig.c_translation.sizeof(struct_sockaddr_storage));
}
pub const _BYTESWAP_H = @as(c_int, 1);
pub inline fn bswap_16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn bswap_32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn bswap_64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole(x: anytype) @TypeOf(__bswap_32(htonl(x))) {
    return __bswap_32(htonl(x));
}
pub const NOTCURSES_NCKEYS = "";
pub inline fn suppuabize(w: anytype) @TypeOf(w + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100000, .hexadecimal)) {
    return w + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100000, .hexadecimal);
}
pub const NCKEY_INVALID = suppuabize(@as(c_int, 0));
pub const NCKEY_SIGNAL = suppuabize(@as(c_int, 1));
pub const NCKEY_UP = suppuabize(@as(c_int, 2));
pub const NCKEY_RIGHT = suppuabize(@as(c_int, 3));
pub const NCKEY_DOWN = suppuabize(@as(c_int, 4));
pub const NCKEY_LEFT = suppuabize(@as(c_int, 5));
pub const NCKEY_INS = suppuabize(@as(c_int, 6));
pub const NCKEY_DEL = suppuabize(@as(c_int, 7));
pub const NCKEY_BACKSPACE = suppuabize(@as(c_int, 8));
pub const NCKEY_PGDOWN = suppuabize(@as(c_int, 9));
pub const NCKEY_PGUP = suppuabize(@as(c_int, 10));
pub const NCKEY_HOME = suppuabize(@as(c_int, 11));
pub const NCKEY_END = suppuabize(@as(c_int, 12));
pub const NCKEY_F00 = suppuabize(@as(c_int, 20));
pub const NCKEY_F01 = suppuabize(@as(c_int, 21));
pub const NCKEY_F02 = suppuabize(@as(c_int, 22));
pub const NCKEY_F03 = suppuabize(@as(c_int, 23));
pub const NCKEY_F04 = suppuabize(@as(c_int, 24));
pub const NCKEY_F05 = suppuabize(@as(c_int, 25));
pub const NCKEY_F06 = suppuabize(@as(c_int, 26));
pub const NCKEY_F07 = suppuabize(@as(c_int, 27));
pub const NCKEY_F08 = suppuabize(@as(c_int, 28));
pub const NCKEY_F09 = suppuabize(@as(c_int, 29));
pub const NCKEY_F10 = suppuabize(@as(c_int, 30));
pub const NCKEY_F11 = suppuabize(@as(c_int, 31));
pub const NCKEY_F12 = suppuabize(@as(c_int, 32));
pub const NCKEY_F13 = suppuabize(@as(c_int, 33));
pub const NCKEY_F14 = suppuabize(@as(c_int, 34));
pub const NCKEY_F15 = suppuabize(@as(c_int, 35));
pub const NCKEY_F16 = suppuabize(@as(c_int, 36));
pub const NCKEY_F17 = suppuabize(@as(c_int, 37));
pub const NCKEY_F18 = suppuabize(@as(c_int, 38));
pub const NCKEY_F19 = suppuabize(@as(c_int, 39));
pub const NCKEY_F20 = suppuabize(@as(c_int, 40));
pub const NCKEY_F21 = suppuabize(@as(c_int, 41));
pub const NCKEY_F22 = suppuabize(@as(c_int, 42));
pub const NCKEY_F23 = suppuabize(@as(c_int, 43));
pub const NCKEY_F24 = suppuabize(@as(c_int, 44));
pub const NCKEY_F25 = suppuabize(@as(c_int, 45));
pub const NCKEY_F26 = suppuabize(@as(c_int, 46));
pub const NCKEY_F27 = suppuabize(@as(c_int, 47));
pub const NCKEY_F28 = suppuabize(@as(c_int, 48));
pub const NCKEY_F29 = suppuabize(@as(c_int, 49));
pub const NCKEY_F30 = suppuabize(@as(c_int, 50));
pub const NCKEY_F31 = suppuabize(@as(c_int, 51));
pub const NCKEY_F32 = suppuabize(@as(c_int, 52));
pub const NCKEY_F33 = suppuabize(@as(c_int, 53));
pub const NCKEY_F34 = suppuabize(@as(c_int, 54));
pub const NCKEY_F35 = suppuabize(@as(c_int, 55));
pub const NCKEY_F36 = suppuabize(@as(c_int, 56));
pub const NCKEY_F37 = suppuabize(@as(c_int, 57));
pub const NCKEY_F38 = suppuabize(@as(c_int, 58));
pub const NCKEY_F39 = suppuabize(@as(c_int, 59));
pub const NCKEY_F40 = suppuabize(@as(c_int, 60));
pub const NCKEY_F41 = suppuabize(@as(c_int, 61));
pub const NCKEY_F42 = suppuabize(@as(c_int, 62));
pub const NCKEY_F43 = suppuabize(@as(c_int, 63));
pub const NCKEY_F44 = suppuabize(@as(c_int, 64));
pub const NCKEY_F45 = suppuabize(@as(c_int, 65));
pub const NCKEY_F46 = suppuabize(@as(c_int, 66));
pub const NCKEY_F47 = suppuabize(@as(c_int, 67));
pub const NCKEY_F48 = suppuabize(@as(c_int, 68));
pub const NCKEY_F49 = suppuabize(@as(c_int, 69));
pub const NCKEY_F50 = suppuabize(@as(c_int, 70));
pub const NCKEY_F51 = suppuabize(@as(c_int, 71));
pub const NCKEY_F52 = suppuabize(@as(c_int, 72));
pub const NCKEY_F53 = suppuabize(@as(c_int, 73));
pub const NCKEY_F54 = suppuabize(@as(c_int, 74));
pub const NCKEY_F55 = suppuabize(@as(c_int, 75));
pub const NCKEY_F56 = suppuabize(@as(c_int, 76));
pub const NCKEY_F57 = suppuabize(@as(c_int, 77));
pub const NCKEY_F58 = suppuabize(@as(c_int, 78));
pub const NCKEY_F59 = suppuabize(@as(c_int, 79));
pub const NCKEY_F60 = suppuabize(@as(c_int, 80));
pub const NCKEY_ENTER = suppuabize(@as(c_int, 121));
pub const NCKEY_CLS = suppuabize(@as(c_int, 122));
pub const NCKEY_DLEFT = suppuabize(@as(c_int, 123));
pub const NCKEY_DRIGHT = suppuabize(@as(c_int, 124));
pub const NCKEY_ULEFT = suppuabize(@as(c_int, 125));
pub const NCKEY_URIGHT = suppuabize(@as(c_int, 126));
pub const NCKEY_CENTER = suppuabize(@as(c_int, 127));
pub const NCKEY_BEGIN = suppuabize(@as(c_int, 128));
pub const NCKEY_CANCEL = suppuabize(@as(c_int, 129));
pub const NCKEY_CLOSE = suppuabize(@as(c_int, 130));
pub const NCKEY_COMMAND = suppuabize(@as(c_int, 131));
pub const NCKEY_COPY = suppuabize(@as(c_int, 132));
pub const NCKEY_EXIT = suppuabize(@as(c_int, 133));
pub const NCKEY_PRINT = suppuabize(@as(c_int, 134));
pub const NCKEY_REFRESH = suppuabize(@as(c_int, 135));
pub const NCKEY_CAPS_LOCK = suppuabize(@as(c_int, 150));
pub const NCKEY_SCROLL_LOCK = suppuabize(@as(c_int, 151));
pub const NCKEY_NUM_LOCK = suppuabize(@as(c_int, 152));
pub const NCKEY_PRINT_SCREEN = suppuabize(@as(c_int, 153));
pub const NCKEY_PAUSE = suppuabize(@as(c_int, 154));
pub const NCKEY_MENU = suppuabize(@as(c_int, 155));
pub const NCKEY_MEDIA_PLAY = suppuabize(@as(c_int, 158));
pub const NCKEY_MEDIA_PAUSE = suppuabize(@as(c_int, 159));
pub const NCKEY_MEDIA_PPAUSE = suppuabize(@as(c_int, 160));
pub const NCKEY_MEDIA_REV = suppuabize(@as(c_int, 161));
pub const NCKEY_MEDIA_STOP = suppuabize(@as(c_int, 162));
pub const NCKEY_MEDIA_FF = suppuabize(@as(c_int, 163));
pub const NCKEY_MEDIA_REWIND = suppuabize(@as(c_int, 164));
pub const NCKEY_MEDIA_NEXT = suppuabize(@as(c_int, 165));
pub const NCKEY_MEDIA_PREV = suppuabize(@as(c_int, 166));
pub const NCKEY_MEDIA_RECORD = suppuabize(@as(c_int, 167));
pub const NCKEY_MEDIA_LVOL = suppuabize(@as(c_int, 168));
pub const NCKEY_MEDIA_RVOL = suppuabize(@as(c_int, 169));
pub const NCKEY_MEDIA_MUTE = suppuabize(@as(c_int, 170));
pub const NCKEY_LSHIFT = suppuabize(@as(c_int, 171));
pub const NCKEY_LCTRL = suppuabize(@as(c_int, 172));
pub const NCKEY_LALT = suppuabize(@as(c_int, 173));
pub const NCKEY_LSUPER = suppuabize(@as(c_int, 174));
pub const NCKEY_LHYPER = suppuabize(@as(c_int, 175));
pub const NCKEY_LMETA = suppuabize(@as(c_int, 176));
pub const NCKEY_RSHIFT = suppuabize(@as(c_int, 177));
pub const NCKEY_RCTRL = suppuabize(@as(c_int, 178));
pub const NCKEY_RALT = suppuabize(@as(c_int, 179));
pub const NCKEY_RSUPER = suppuabize(@as(c_int, 180));
pub const NCKEY_RHYPER = suppuabize(@as(c_int, 181));
pub const NCKEY_RMETA = suppuabize(@as(c_int, 182));
pub const NCKEY_BUTTON1 = suppuabize(@as(c_int, 201));
pub const NCKEY_BUTTON2 = suppuabize(@as(c_int, 202));
pub const NCKEY_BUTTON3 = suppuabize(@as(c_int, 203));
pub const NCKEY_BUTTON4 = suppuabize(@as(c_int, 204));
pub const NCKEY_BUTTON5 = suppuabize(@as(c_int, 205));
pub const NCKEY_BUTTON6 = suppuabize(@as(c_int, 206));
pub const NCKEY_BUTTON7 = suppuabize(@as(c_int, 207));
pub const NCKEY_BUTTON8 = suppuabize(@as(c_int, 208));
pub const NCKEY_BUTTON9 = suppuabize(@as(c_int, 209));
pub const NCKEY_BUTTON10 = suppuabize(@as(c_int, 210));
pub const NCKEY_BUTTON11 = suppuabize(@as(c_int, 211));
pub const NCKEY_EOF = suppuabize(@as(c_int, 300));
pub const NCKEY_SCROLL_UP = NCKEY_BUTTON4;
pub const NCKEY_SCROLL_DOWN = NCKEY_BUTTON5;
pub const NCKEY_RETURN = NCKEY_ENTER;
pub const NCKEY_RESIZE = NCKEY_SIGNAL;
pub const NCKEY_ESC = @as(c_int, 0x1b);
pub const NCKEY_SPACE = @as(c_int, 0x20);
pub const NOTCURSES_NCSEQS = "";
pub const NCBOXLIGHTW = "┌┐└┘─│";
pub const NCBOXHEAVYW = "┏┓┗┛━┃";
pub const NCBOXROUNDW = "╭╮╰╯─│";
pub const NCBOXDOUBLEW = "╔╗╚╝═║";
pub const NCBOXASCIIW = "/\\\\/-|";
pub const NCBOXOUTERW = "🭽🭾🭼🭿▁🭵🭶🭰";
pub const NCWHITESQUARESW = "◲◱◳◰";
pub const NCWHITECIRCLESW = "◶◵◷◴";
pub const NCCIRCULARARCSW = "◜◝◟◞";
pub const NCWHITETRIANGLESW = "◿◺◹◸";
pub const NCBLACKTRIANGLESW = "◢◣◥◤";
pub const NCSHADETRIANGLESW = "🮞🮟🮝🮜";
pub const NCBLACKARROWHEADSW = "⮝⮟⮜⮞";
pub const NCLIGHTARROWHEADSW = "⮙⮛⮘⮚";
pub const NCARROWDOUBLEW = "⮅⮇⮄⮆";
pub const NCARROWDASHEDW = "⭫⭭⭪⭬";
pub const NCARROWCIRCLEDW = "⮉⮋⮈⮊";
pub const NCARROWANTICLOCKW = "⮏⮍⮎⮌";
pub const NCBOXDRAWW = "╵╷╴╶";
pub const NCBOXDRAWHEAVYW = "╹╻╸╺";
pub const NCARROWW = "⭡⭣⭠⭢⭧⭩⭦⭨";
pub const NCDIAGONALSW = "🮣🮠🮡🮢🮤🮥🮦🮧";
pub const NCDIGITSSUPERW = "⁰¹²³⁴⁵⁶⁷⁸⁹";
pub const NCDIGITSSUBW = "₀₁₂₃₄₅₆₇₈₉";
pub const NCASTERISKS5 = "🞯🞰🞱🞲🞳🞴";
pub const NCASTERISKS6 = "🞵🞶🞷🞸🞹🞺";
pub const NCASTERISKS8 = "🞻🞼✳🞽🞾🞿";
pub const NCANGLESBR = "🭁🭂🭃🭄🭅🭆🭇🭈🭉🭊🭋";
pub const NCANGLESTR = "🭒🭓🭔🭕🭖🭧🭢🭣🭤🭥🭦";
pub const NCANGLESBL = "🭌🭍🭎🭏🭐🭑🬼🬽🬾🬿🭀";
pub const NCANGLESTL = "🭝🭞🭟🭠🭡🭜🭗🭘🭙🭚🭛";
pub const NCEIGHTHSB = " ▁▂▃▄▅▆▇█";
pub const NCEIGHTHST = " ▔🮂🮃▀🮄🮅🮆█";
pub const NCEIGHTHSL = "▏▎▍▌▋▊▉█";
pub const NCEIGHTHSR = "▕🮇🮈▐🮉🮊🮋█";
pub const NCHALFBLOCKS = " ▀▄█";
pub const NCQUADBLOCKS = " ▘▝▀▖▌▞▛▗▚▐▜▄▙▟█";
pub const NCSEXBLOCKS = " 🬀🬁🬂🬃🬄🬅🬆🬇🬈🬊🬋🬌🬍🬎🬏🬐🬑🬒🬓▌🬔🬕🬖🬗🬘🬙🬚🬛🬜🬝🬞🬟🬠🬡🬢🬣🬤🬥🬦🬧▐🬨🬩🬪🬫🬬🬭🬮🬯🬰🬱🬲🬳🬴🬵🬶🬷🬸🬹🬺🬻█";
pub const NCBOXLIGHT = "┌┐└┘─│";
pub const NCBOXHEAVY = "┏┓┗┛━┃";
pub const NCBOXROUND = "╭╮╰╯─│";
pub const NCBOXDOUBLE = "╔╗╚╝═║";
pub const NCBOXASCII = "/\\\\/-|";
pub const NCBOXOUTER = "🭽🭾🭼🭿▁🭵🭶🭰";
pub const NCALIGN_TOP = NCALIGN_LEFT;
pub const NCALIGN_BOTTOM = NCALIGN_RIGHT;
pub const NCALPHA_HIGHCONTRAST = @as(c_ulonglong, 0x30000000);
pub const NCALPHA_TRANSPARENT = @as(c_ulonglong, 0x20000000);
pub const NCALPHA_BLEND = @as(c_ulonglong, 0x10000000);
pub const NCALPHA_OPAQUE = @as(c_ulonglong, 0x00000000);
pub const NCPALETTESIZE = @as(c_int, 256);
pub const NC_NOBACKGROUND_MASK = @as(c_ulonglong, 0x8700000000000000);
pub const NC_BGDEFAULT_MASK = @as(c_ulonglong, 0x0000000040000000);
pub const NC_FGDEFAULT_MASK = NC_BGDEFAULT_MASK << @as(c_uint, 32);
pub const NC_BG_RGB_MASK = @as(c_ulonglong, 0x0000000000ffffff);
pub const NC_FG_RGB_MASK = NC_BG_RGB_MASK << @as(c_uint, 32);
pub const NC_BG_PALETTE = @as(c_ulonglong, 0x0000000008000000);
pub const NC_FG_PALETTE = NC_BG_PALETTE << @as(c_uint, 32);
pub const NC_BG_ALPHA_MASK = @as(c_ulonglong, 0x30000000);
pub const NC_FG_ALPHA_MASK = NC_BG_ALPHA_MASK << @as(c_uint, 32);
pub inline fn NCCHANNEL_INITIALIZER(r: anytype, g: anytype, b: anytype) @TypeOf((((@import("std").zig.c_translation.cast(u32, r) << @as(c_uint, 16)) + (@import("std").zig.c_translation.cast(u32, g) << @as(c_uint, 8))) + b) + NC_BGDEFAULT_MASK) {
    return (((@import("std").zig.c_translation.cast(u32, r) << @as(c_uint, 16)) + (@import("std").zig.c_translation.cast(u32, g) << @as(c_uint, 8))) + b) + NC_BGDEFAULT_MASK;
}
pub inline fn NCCHANNELS_INITIALIZER(fr: anytype, fg: anytype, fb: anytype, br: anytype, bg: anytype, bb: anytype) @TypeOf((NCCHANNEL_INITIALIZER(fr, fg, fb) << @as(c_ulonglong, 32)) + NCCHANNEL_INITIALIZER(br, bg, bb)) {
    return (NCCHANNEL_INITIALIZER(fr, fg, fb) << @as(c_ulonglong, 32)) + NCCHANNEL_INITIALIZER(br, bg, bb);
}
pub const NCSTYLE_MASK = @as(c_uint, 0xffff);
pub const NCSTYLE_ITALIC = @as(c_uint, 0x0010);
pub const NCSTYLE_UNDERLINE = @as(c_uint, 0x0008);
pub const NCSTYLE_UNDERCURL = @as(c_uint, 0x0004);
pub const NCSTYLE_BOLD = @as(c_uint, 0x0002);
pub const NCSTYLE_STRUCK = @as(c_uint, 0x0001);
pub const NCSTYLE_NONE = @as(c_int, 0);
pub const NCOPTION_INHIBIT_SETLOCALE = @as(c_ulonglong, 0x0001);
pub const NCOPTION_NO_CLEAR_BITMAPS = @as(c_ulonglong, 0x0002);
pub const NCOPTION_NO_WINCH_SIGHANDLER = @as(c_ulonglong, 0x0004);
pub const NCOPTION_NO_QUIT_SIGHANDLERS = @as(c_ulonglong, 0x0008);
pub const NCOPTION_PRESERVE_CURSOR = @as(c_ulonglong, 0x0010);
pub const NCOPTION_SUPPRESS_BANNERS = @as(c_ulonglong, 0x0020);
pub const NCOPTION_NO_ALTERNATE_SCREEN = @as(c_ulonglong, 0x0040);
pub const NCOPTION_NO_FONT_CHANGES = @as(c_ulonglong, 0x0080);
pub const NCOPTION_DRAIN_INPUT = @as(c_ulonglong, 0x0100);
pub const NCPLANE_OPTION_HORALIGNED = @as(c_ulonglong, 0x0001);
pub const NCPLANE_OPTION_VERALIGNED = @as(c_ulonglong, 0x0002);
pub const NCPLANE_OPTION_MARGINALIZED = @as(c_ulonglong, 0x0004);
pub const NCPLANE_OPTION_FIXED = @as(c_ulonglong, 0x0008);
pub const WCHAR_MAX_UTF8BYTES = @as(c_int, 4);
pub const NCBOXMASK_TOP = @as(c_int, 0x0001);
pub const NCBOXMASK_RIGHT = @as(c_int, 0x0002);
pub const NCBOXMASK_BOTTOM = @as(c_int, 0x0004);
pub const NCBOXMASK_LEFT = @as(c_int, 0x0008);
pub const NCBOXGRAD_TOP = @as(c_int, 0x0010);
pub const NCBOXGRAD_RIGHT = @as(c_int, 0x0020);
pub const NCBOXGRAD_BOTTOM = @as(c_int, 0x0040);
pub const NCBOXGRAD_LEFT = @as(c_int, 0x0080);
pub const NCBOXCORNER_MASK = @as(c_int, 0x0300);
pub const NCBOXCORNER_SHIFT = @as(c_uint, 8);
pub const NCVISUAL_OPTION_NODEGRADE = @as(c_ulonglong, 0x0001);
pub const NCVISUAL_OPTION_BLEND = @as(c_ulonglong, 0x0002);
pub const NCVISUAL_OPTION_HORALIGNED = @as(c_ulonglong, 0x0004);
pub const NCVISUAL_OPTION_VERALIGNED = @as(c_ulonglong, 0x0008);
pub const NCVISUAL_OPTION_ADDALPHA = @as(c_ulonglong, 0x0010);
pub const NCVISUAL_OPTION_CHILDPLANE = @as(c_ulonglong, 0x0020);
pub const NCVISUAL_OPTION_NOINTERPOLATE = @as(c_ulonglong, 0x0040);
pub const NCREEL_OPTION_INFINITESCROLL = @as(c_ulonglong, 0x0001);
pub const NCREEL_OPTION_CIRCULAR = @as(c_ulonglong, 0x0002);
pub const PREFIXCOLUMNS = @as(c_int, 7);
pub const IPREFIXCOLUMNS = @as(c_int, 8);
pub const BPREFIXCOLUMNS = @as(c_int, 9);
pub const PREFIXSTRLEN = PREFIXCOLUMNS + @as(c_int, 1);
pub const IPREFIXSTRLEN = IPREFIXCOLUMNS + @as(c_int, 1);
pub const BPREFIXSTRLEN = BPREFIXCOLUMNS + @as(c_int, 1);
pub inline fn NCMETRICFWIDTH(x: anytype, cols: anytype) c_int {
    return @import("std").zig.c_translation.cast(c_int, (strlen(x) - ncstrwidth(x)) + cols);
}
pub inline fn PREFIXFMT(x: anytype) @TypeOf(x) {
    return blk: {
        _ = NCMETRICFWIDTH(x, PREFIXCOLUMNS);
        break :blk x;
    };
}
pub inline fn BPREFIXFMT(x: anytype) @TypeOf(x) {
    return blk: {
        _ = NCMETRICFWIDTH(x, BPREFIXCOLUMNS);
        break :blk x;
    };
}
pub const NCMENU_OPTION_BOTTOM = @as(c_ulonglong, 0x0001);
pub const NCMENU_OPTION_HIDING = @as(c_ulonglong, 0x0002);
pub const NCPROGBAR_OPTION_RETROGRADE = @as(c_uint, 0x0001);
pub const NCTABBED_OPTION_BOTTOM = @as(c_ulonglong, 0x0001);
pub const NCPLOT_OPTION_LABELTICKSD = @as(c_uint, 0x0001);
pub const NCPLOT_OPTION_EXPONENTIALD = @as(c_uint, 0x0002);
pub const NCPLOT_OPTION_VERTICALI = @as(c_uint, 0x0004);
pub const NCPLOT_OPTION_NODEGRADE = @as(c_uint, 0x0008);
pub const NCPLOT_OPTION_DETECTMAXONLY = @as(c_uint, 0x0010);
pub const NCPLOT_OPTION_PRINTSAMPLE = @as(c_uint, 0x0020);
pub const NCREADER_OPTION_HORSCROLL = @as(c_ulonglong, 0x0001);
pub const NCREADER_OPTION_VERSCROLL = @as(c_ulonglong, 0x0002);
pub const NCREADER_OPTION_NOCMDKEYS = @as(c_ulonglong, 0x0004);
pub const NCREADER_OPTION_CURSOR = @as(c_ulonglong, 0x0008);
pub const tm = struct_tm;
pub const timespec = struct_timespec;
pub const itimerspec = struct_itimerspec;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const __va_list_tag = struct___va_list_tag;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const timeval = struct_timeval;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const _fpx_sw_bytes = struct__fpx_sw_bytes;
pub const _fpreg = struct__fpreg;
pub const _fpxreg = struct__fpxreg;
pub const _xmmreg = struct__xmmreg;
pub const _fpstate = struct__fpstate;
pub const sigcontext = struct_sigcontext;
pub const _xsave_hdr = struct__xsave_hdr;
pub const _ymmh_state = struct__ymmh_state;
pub const _xstate = struct__xstate;
pub const _libc_fpxreg = struct__libc_fpxreg;
pub const _libc_xmmreg = struct__libc_xmmreg;
pub const _libc_fpstate = struct__libc_fpstate;
pub const iovec = struct_iovec;
pub const __socket_type = enum___socket_type;
pub const sockaddr = struct_sockaddr;
pub const sockaddr_storage = struct_sockaddr_storage;
pub const msghdr = struct_msghdr;
pub const cmsghdr = struct_cmsghdr;
pub const linger = struct_linger;
pub const osockaddr = struct_osockaddr;
pub const in_addr = struct_in_addr;
pub const ip_opts = struct_ip_opts;
pub const ip_mreqn = struct_ip_mreqn;
pub const in_pktinfo = struct_in_pktinfo;
pub const in6_addr = struct_in6_addr;
pub const sockaddr_in = struct_sockaddr_in;
pub const sockaddr_in6 = struct_sockaddr_in6;
pub const ip_mreq = struct_ip_mreq;
pub const ip_mreq_source = struct_ip_mreq_source;
pub const ipv6_mreq = struct_ipv6_mreq;
pub const group_req = struct_group_req;
pub const group_source_req = struct_group_source_req;
pub const ip_msfilter = struct_ip_msfilter;
pub const group_filter = struct_group_filter;
pub const notcurses = struct_notcurses;
pub const ncplane = struct_ncplane;
pub const ncvisual = struct_ncvisual;
pub const ncuplot = struct_ncuplot;
pub const ncdplot = struct_ncdplot;
pub const ncprogbar = struct_ncprogbar;
pub const ncfdplane = struct_ncfdplane;
pub const ncsubproc = struct_ncsubproc;
pub const ncselector = struct_ncselector;
pub const ncmultiselector = struct_ncmultiselector;
pub const ncreader = struct_ncreader;
pub const ncfadectx = struct_ncfadectx;
pub const nctablet = struct_nctablet;
pub const ncreel = struct_ncreel;
pub const nctab = struct_nctab;
pub const nctabbed = struct_nctabbed;
pub const ncdirect = struct_ncdirect;
pub const ncvisual_options = struct_ncvisual_options;
pub const ncselector_item = struct_ncselector_item;
pub const ncmselector_item = struct_ncmselector_item;
pub const nctree = struct_nctree;
pub const ncmenu_item = struct_ncmenu_item;
pub const ncmenu_section = struct_ncmenu_section;
pub const ncmenu = struct_ncmenu;
