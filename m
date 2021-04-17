Delivery-date: Sat, 17 Apr 2021 21:41:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXqpB-0003ca-LX
	for lore@lore.pengutronix.de; Sat, 17 Apr 2021 21:41:49 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXqp9-00069M-Ua
	for lore@pengutronix.de; Sat, 17 Apr 2021 21:41:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iZ/tg8bDaAptm4ltDT/bRCRHN3JCNccDx3zAVY76ByM=; b=i8YXuj8anBWqsN
	8u/GWj9sVoTvL0IbhWKqf3VY0FxEkuWo63+iGv20z+9WUhHV4PWoORG9qrMcgu+yUVUzmp8gOia1B
	VNhRUAReXfxhZTdrSpMkvXDwCQdOe4PDFXqk3Mqz9WtfqQOdOei9cKi1YsX3JnrsaiQIw9BzImspW
	7r7C19Vq22QayB90rF9uMh5gxYnQPkoDctIzTvdmA1yt5qsIkIulR1ebcAHqktvPueUWfJYdzbtt8
	xku7AB2TGinM65UpO3gi5/tQ1+wRWK9oiMgMzPTu/rxfWpd5yxWJ4OE3Y8RzaGYtaY48Uy/fGEnbE
	WrLaiaudPHfm1M2Wyluw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXqo3-0064Yw-GZ; Sat, 17 Apr 2021 19:40:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXqnu-0064WS-KC
 for barebox@desiato.infradead.org; Sat, 17 Apr 2021 19:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ZdkgNZ0OXXSBCaD4tB7GoEl6zcX9vexmnC9WWg1/Gww=; b=gnHE5QDpJtLaxlpwhRYDAB+Xy/
 aMT49GrG1C3ahtKLIEFHNUaIfpmunOeydGVgXA962HsO1zyecsZTdUfp07in64qhiuSPTkQYuj6fP
 zHHaVAGbwvG5xa5uxGyWpnCSFl5Xj1K2iV1bhCVNUQ4/tgJ/BFeYvV+v7Q/Bsxdw5MSbCA4xjKwqq
 qb1/q7SBQQ3XacS0aIn+lAHWhbJPqDYoTrcqXFcRl6x2fTwtReIyMNW6Y0KlGViGhqWRlr5Vu2GOf
 qJZ3DE7gZSm8g2DrqyXwFD7pze1AULjQ4Qm42auztKAqiAx7+J1jAw9X+6txSIxlo4jlAUhmNj3zG
 TLi3T4zw==;
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXqno-00AA4h-Um
 for barebox@lists.infradead.org; Sat, 17 Apr 2021 19:40:29 +0000
Received: by mail-qt1-x829.google.com with SMTP id y12so23363615qtx.11
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 12:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZdkgNZ0OXXSBCaD4tB7GoEl6zcX9vexmnC9WWg1/Gww=;
 b=KrUDcG4rLMOykDBCit5ZVeZ7FFr/W/ir4FP/9HfH3r8cLIgiGfbONDwnZqxkVKNM4R
 i3RjOuiEVkRlNvdjnBvYu+/Ai2xL15XgnhvNyQL7NRqrXXfSQ4RPzbsANXOXv7b5zp3m
 fm9G3H/rYVZPNFpebVxl1hNZDhBXpw6uc2NajHX4l5Q0uy1srSbUuQcDs4usTm0bBrc3
 JQSzycC/5t40D6PqE840LxoQ5uR4W+q+6KPULmqTLM9lr8WikPzHVX/laoSlnlx0ZBF0
 nK0m13IijBAfPaeHz9UsxgsHqYeUZYfEWewnaNnRRad55a6UYCGcng328VLzyKlzWC/1
 pKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZdkgNZ0OXXSBCaD4tB7GoEl6zcX9vexmnC9WWg1/Gww=;
 b=cPwSeafMzIQQfYV16bbJ/u8e7tfESn3AXMRvnNTVSmAuS39bpgofheXzAYIBdaVay8
 4g6Db/XptJ4L/HQVG6dbD+iUH8blvMk+yEo0XPt/w6fP4pYQcqZ5M2rs/BpqYSn+XQET
 0lSbgabcIhdITWK1BTa9ku5Rzp7zUmV7Y7hjRHBBK+TSAIvsPA7f2Zy9e2T+qsqt5pCt
 6rkvRZZsVuggv5P80HDnuzXAjlP91z528Bw6HsoCetI3d1N+bqzyg+5BymA+k10quVgl
 lSStliCbmms+aE48hsumM0Sf+zF5eFgj/x4EsB5konbVVFvKnzUYTF3oOulONTFcN+HX
 xTXQ==
X-Gm-Message-State: AOAM532c8KjDJkuwILpTrVRjfQ2hxeHqM//V0ZvoCp7KyhqstDfYgGQH
 Nn8wwnF6S9LwVjj3WftcugvSYcKW8K5XOPX+7mBOeTWIki+Bew==
X-Google-Smtp-Source: ABdhPJyfOANqd9r/iwFI43FyESgVC8ALTwu58T94EYSyIqTt4H/buV7QrRW5Vl7rzM5a+PayrgkEBmWcfLO+dUuK9pA=
X-Received: by 2002:a05:622a:46:: with SMTP id
 y6mr4879688qtw.154.1618688423187; 
 Sat, 17 Apr 2021 12:40:23 -0700 (PDT)
MIME-Version: 1.0
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Sun, 18 Apr 2021 01:10:10 +0530
Message-ID: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_124025_049882_B8D3962B 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75 autolearn=no autolearn_force=no
	version=3.4.2
Subject: [BUG] Out of bound read of size 1 in __d_alloc function which further
 leads to __default_memcpy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I have found the Out of bound read issue of size 1 when argv[2] is "" in
__d_alloc function fs/fs.c:1254 which further goes
and crashes into  __default_memcpy call lib/string.c:562

Tested on:
- barebox-2021.04.0
- git commit af0f068a6edad45b033e772056ac0352e1ba3613

Host information:
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=20.04
DISTRIB_CODENAME=focal
DISTRIB_DESCRIPTION="Ubuntu 20.04.2 LTS"

Reproduce:
type the command below in the barebox shell:
nfs somefile ""
then crash observed.

Crash log (ASAN):
barebox@Sandbox:/ nfs file ""
=================================================================
==47452==ERROR: AddressSanitizer: stack-buffer-overflow on address
0x7fff3ea92ee8 at pc 0x00000048d02a bp 0x7fff3ea92790 sp
0x7fff3ea92780
READ of size 1 at 0x7fff3ea92ee8 thread T0
    #0 0x48d029 in __default_memcpy lib/string.c:562
    #1 0x4e3c6a in __d_alloc fs/fs.c:1254
    #2 0x4e40c5 in d_alloc fs/fs.c:1281
    #3 0x4e40c5 in __lookup_hash fs/fs.c:1625
    #4 0x4e40c5 in __lookup_hash fs/fs.c:1611
    #5 0x4e7a9d in barebox_open fs/fs.c:2377
    #6 0x4ce7b5 in do_nfs net/nfs.c:691
    #7 0x4124f1 in execute_command common/command.c:62
    #8 0x425f88 in run_pipe_real common/hush.c:837
    #9 0x425f88 in run_list_real common/hush.c:961
    #10 0x425f88 in run_list_real common/hush.c:849
    #11 0x42440a in run_list common/hush.c:1078
    #12 0x42440a in parse_stream_outer common/hush.c:1705
    #13 0x426b21 in run_shell common/hush.c:1928
    #14 0x408ec1 in run_init common/startup.c:378
    #15 0x408f9a in start_barebox common/startup.c:421
    #16 0x51ad2c in main (/home/bsdboy/barebox-2021.04.0/barebox+0x51ad2c)
    #17 0x7f76c55d60b2 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x270b2)
    #18 0x405ebd in _start (/home/bsdboy/barebox-2021.04.0/barebox+0x405ebd)

Address 0x7fff3ea92ee8 is located in stack of thread T0 at offset 1432 in frame
    #0 0x4e788f in barebox_open fs/fs.c:2353

  This frame has 1 object(s):
    [48, 1432) 'nd' (line 2361) <== Memory access at offset 1432
overflows this variable
HINT: this may be a false positive if your program uses some custom
stack unwind mechanism, swapcontext or vfork
      (longjmp and C++ exceptions *are* supported)
SUMMARY: AddressSanitizer: stack-buffer-overflow lib/string.c:562 in
__default_memcpy
Shadow bytes around the buggy address:
  0x100067d4a580: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100067d4a590: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100067d4a5a0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100067d4a5b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100067d4a5c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x100067d4a5d0: 00 00 00 00 00 00 00 00 00 00 00 00 00[f3]f3 f3
  0x100067d4a5e0: f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 00 00
  0x100067d4a5f0: 00 00 00 00 00 00 00 00 00 00 00 00 f1 f1 f1 f1
  0x100067d4a600: 00 00 00 00 f3 f3 f3 f3 00 00 00 00 00 00 00 00
  0x100067d4a610: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100067d4a620: f1 f1 f1 f1 f1 f1 02 f2 00 f2 f2 f2 00 f2 f2 f2
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
  Shadow gap:              cc
==47452==ABORTING

.config file:
#
# Automatically generated file; DO NOT EDIT.
# Barebox/sandbox 2021.04.0 Configuration
#
CONFIG_SANDBOX=y
CONFIG_ARCH_TEXT_BASE=0x00000000
CONFIG_SANDBOX_REEXEC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_CC_IS_64BIT=y
CONFIG_CC_HAS_LINUX_I386_SUPPORT=y
CONFIG_64BIT=y
# CONFIG_SANDBOX_LINUX_I386 is not set
CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_DMA=y
CONFIG_HAS_ARCH_SJLJ=y
CONFIG_GENERIC_GPIO=y
CONFIG_BLOCK=y
CONFIG_BLOCK_WRITE=y
CONFIG_FILETYPE=y
CONFIG_BINFMT=y
CONFIG_UIMAGE=y
CONFIG_LOGBUF=y
CONFIG_STDDEV=y
CONFIG_MENUTREE=y
CONFIG_FILE_LIST=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_BOOT=y
CONFIG_FASTBOOT_BASE=y

#
# General Settings
#
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BANNER=y
CONFIG_MEMINFO=y
CONFIG_ENVIRONMENT_VARIABLES=y
CONFIG_GLOBALVAR=y
CONFIG_NVVAR=y

#
# memory layout
#
# CONFIG_MMU is not set
CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
CONFIG_STACK_SIZE=0x8000
CONFIG_MALLOC_SIZE=0x1000000
# end of memory layout

# CONFIG_EXPERIMENTAL is not set
CONFIG_MALLOC_DLMALLOC=y
# CONFIG_MALLOC_TLSF is not set
# CONFIG_MALLOC_LIBC is not set
# CONFIG_PANIC_HANG is not set
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_CBSIZE=1024
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
# CONFIG_SHELL_NONE is not set
CONFIG_GLOB=y
CONFIG_GLOB_SORT=y
CONFIG_PROMPT_HUSH_PS2="> "
CONFIG_HUSH_FANCY_PROMPT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
CONFIG_MENU=y
CONFIG_PASSWORD=y
CONFIG_PASSWORD_DEFAULT=""
CONFIG_PASSWD_SUM_MD5=y
# CONFIG_PASSWD_SUM_SHA1 is not set
# CONFIG_PASSWD_SUM_SHA256 is not set
# CONFIG_PASSWD_SUM_SHA512 is not set
# CONFIG_PASSWD_CRYPTO_PBKDF2 is not set
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
CONFIG_BOOTM=y
# CONFIG_BOOTM_SHOW_TYPE is not set
# CONFIG_BOOTM_VERBOSE is not set
# CONFIG_BOOTM_INITRD is not set
# CONFIG_BOOTM_OFTREE is not set
# CONFIG_BOOTM_ELF is not set
# CONFIG_BLSPEC is not set
CONFIG_FLEXIBLE_BOOTARGS=y
# CONFIG_BAREBOX_UPDATE is not set
CONFIG_IMD=y
# CONFIG_IMD_TARGET is not set
CONFIG_CONSOLE_FULL=y
# CONFIG_CONSOLE_SIMPLE is not set
# CONFIG_CONSOLE_NONE is not set
CONFIG_CONSOLE_ACTIVATE_FIRST=y
# CONFIG_CONSOLE_ACTIVATE_ALL is not set
# CONFIG_CONSOLE_ACTIVATE_NONE is not set
CONFIG_CONSOLE_ALLOW_COLOR=y
# CONFIG_CONSOLE_RATP is not set
CONFIG_PARTITION=y
CONFIG_PARTITION_DISK=y
CONFIG_PARTITION_DISK_DOS=y
CONFIG_PARTITION_DISK_EFI=y
CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE=y
CONFIG_PARTITION_DISK_EFI_GPT_COMPARE=y
CONFIG_ENV_HANDLING=y
CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_COMPRESSION_GZIP=y
# CONFIG_DEFAULT_COMPRESSION_BZIP2 is not set
# CONFIG_DEFAULT_COMPRESSION_LZO is not set
# CONFIG_DEFAULT_COMPRESSION_LZ4 is not set
# CONFIG_DEFAULT_COMPRESSION_XZ is not set
# CONFIG_DEFAULT_COMPRESSION_NONE is not set
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
CONFIG_POLLER=y
# CONFIG_BTHREAD is not set
CONFIG_STATE=y
CONFIG_STATE_CRYPTO=y
# CONFIG_STATE_BACKWARD_COMPATIBLE is not set
# CONFIG_BOOTCHOOSER is not set
CONFIG_RESET_SOURCE=y
# CONFIG_MACHINE_ID is not set
# CONFIG_SYSTEMD_OF_WATCHDOG is not set

#
# OP-TEE loading
#
# end of OP-TEE loading

#
# Android Fastboot
#
# CONFIG_FASTBOOT_SPARSE is not set
# CONFIG_FASTBOOT_CMD_OEM is not set
# end of Android Fastboot
# end of General Settings

#
# Debugging
#
CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7
# CONFIG_DEBUG_INITCALLS is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
# CONFIG_UBSAN is not set
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_ASAN=y
# CONFIG_COMPILE_TEST is not set
# end of Debugging

CONFIG_DDR_SPD=y
CONFIG_HAVE_ARCH_ASAN=y
CONFIG_COMMAND_SUPPORT=y
CONFIG_COMPILE_HASH=y

#
# Commands
#

#
# Information
#
CONFIG_CMD_DEVINFO=y
CONFIG_CMD_DMESG=y
CONFIG_CMD_DRVINFO=y
CONFIG_CMD_HELP=y
CONFIG_LONGHELP=y
CONFIG_CMD_IOMEM=y
CONFIG_CMD_IMD=y
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_VERSION=y
CONFIG_CMD_POLLER=y
CONFIG_CMD_SLICE=y
# end of Information

#
# Boot
#
CONFIG_CMD_BOOT=y
CONFIG_CMD_BOOTM=y
CONFIG_CMD_GO=y
CONFIG_CMD_LOADB=y
CONFIG_CMD_LOADS=y
CONFIG_CMD_LOADY=y
CONFIG_CMD_RESET=y
CONFIG_CMD_SAVES=y
CONFIG_CMD_UIMAGE=y
# end of Boot

#
# Partition
#
CONFIG_CMD_PARTITION=y
CONFIG_CMD_AUTOMOUNT=y
CONFIG_CMD_MOUNT=y
CONFIG_CMD_UMOUNT=y
# end of Partition

#
# Environment
#
CONFIG_CMD_NV=y
CONFIG_CMD_EXPORT=y
CONFIG_CMD_DEFAULTENV=y
CONFIG_CMD_GLOBAL=y
CONFIG_CMD_LOADENV=y
CONFIG_CMD_PRINTENV=y
CONFIG_CMD_MAGICVAR=y
CONFIG_CMD_MAGICVAR_HELP=y
CONFIG_CMD_SAVEENV=y
CONFIG_CMD_SETENV=y
# end of Environment

#
# File
#
CONFIG_CMD_BASENAME=y
CONFIG_CMD_CAT=y
CONFIG_CMD_CD=y
CONFIG_CMD_CP=y
CONFIG_CMD_CMP=y
CONFIG_CMD_DIGEST=y
CONFIG_CMD_DIRNAME=y
CONFIG_CMD_FILETYPE=y
CONFIG_CMD_LN=y
CONFIG_CMD_LS=y
CONFIG_CMD_MD5SUM=y
CONFIG_CMD_MKDIR=y
CONFIG_CMD_PWD=y
CONFIG_CMD_READLINK=y
CONFIG_CMD_RM=y
CONFIG_CMD_RMDIR=y
CONFIG_CMD_SHA1SUM=y
CONFIG_CMD_SHA224SUM=y
CONFIG_CMD_SHA256SUM=y
CONFIG_CMD_SHA384SUM=y
CONFIG_CMD_SHA512SUM=y
CONFIG_CMD_UNCOMPRESS=y
# end of File

#
# Shell scripting
#
CONFIG_CMD_FALSE=y
CONFIG_CMD_GETOPT=y
CONFIG_CMD_LET=y
CONFIG_CMD_MSLEEP=y
CONFIG_CMD_READF=y
CONFIG_CMD_SLEEP=y
CONFIG_CMD_TEST=y
CONFIG_CMD_TRUE=y
# end of Shell scripting

#
# Network
#
CONFIG_CMD_DHCP=y
CONFIG_CMD_HOST=y
CONFIG_NET_CMD_IFUP=y
CONFIG_CMD_PING=y
CONFIG_CMD_TFTP=y
CONFIG_CMD_IP_ROUTE_GET=y
# end of Network

#
# Console and Framebuffer interaction
#
CONFIG_CMD_CLEAR=y
CONFIG_CMD_ECHO=y
CONFIG_CMD_ECHO_E=y
CONFIG_CMD_EDIT=y
CONFIG_CMD_LOGIN=y
CONFIG_CMD_MENU=y
CONFIG_CMD_MENU_MANAGEMENT=y
CONFIG_CMD_MENUTREE=y
CONFIG_CMD_PASSWD=y
CONFIG_PASSWD_MODE_HIDE=y
# CONFIG_PASSWD_MODE_STAR is not set
# CONFIG_PASSWD_MODE_CLEAR is not set
CONFIG_CMD_SPLASH=y
CONFIG_CMD_FBTEST=y
CONFIG_CMD_BEEP=y
CONFIG_CMD_READLINE=y
CONFIG_CMD_TIMEOUT=y
# end of Console and Framebuffer interaction

#
# Memory
#
CONFIG_CMD_CRC=y
CONFIG_CMD_CRC_CMP=y
CONFIG_CMD_MD=y
CONFIG_CMD_MEMCMP=y
CONFIG_CMD_MEMCPY=y
CONFIG_CMD_MEMSET=y
CONFIG_CMD_MEMTEST=y
# CONFIG_CMD_MEMTESTER is not set
CONFIG_CMD_MM=y
CONFIG_CMD_MW=y
# end of Memory

#
# Hardware manipulation
#
CONFIG_CMD_DETECT=y
CONFIG_CMD_FLASH=y
CONFIG_CMD_GPIO=y
CONFIG_CMD_HWCLOCK=y
CONFIG_CMD_I2C=y
CONFIG_CMD_LED=y
CONFIG_CMD_POWEROFF=y
CONFIG_CMD_SPI=y
CONFIG_CMD_LED_TRIGGER=y
CONFIG_CMD_WD=y
CONFIG_CMD_WD_DEFAULT_TIMOUT=0
# end of Hardware manipulation

#
# Miscellaneous
#
CONFIG_CMD_2048=y
# CONFIG_CMD_BAREBOX_UPDATE is not set
# CONFIG_CMD_BLOBGEN is not set
# CONFIG_CMD_FIRMWARELOAD is not set
CONFIG_CMD_KEYSTORE=y
CONFIG_CMD_LINUX_EXEC=y
CONFIG_CMD_OF_DIFF=y
CONFIG_CMD_OF_DUMP=y
CONFIG_CMD_OF_NODE=y
CONFIG_CMD_OF_PROPERTY=y
CONFIG_CMD_OF_DISPLAY_TIMINGS=y
CONFIG_CMD_OF_FIXUP_STATUS=y
CONFIG_CMD_OF_OVERLAY=y
CONFIG_CMD_OFTREE=y
CONFIG_CMD_TIME=y
CONFIG_CMD_STATE=y
CONFIG_CMD_DHRYSTONE=y
CONFIG_CMD_SPD_DECODE=y
CONFIG_CMD_SEED=y
# end of Miscellaneous
# end of Commands

CONFIG_NET=y
CONFIG_NET_NFS=y
CONFIG_NET_NETCONSOLE=y
CONFIG_NET_RESOLV=y
CONFIG_NET_IFUP=y
CONFIG_NET_DHCP=y
CONFIG_NET_SNTP=y
CONFIG_NET_FASTBOOT=y

#
# Drivers
#
CONFIG_OFTREE=y
CONFIG_OFTREE_MEM_GENERIC=y
CONFIG_DTC=y
CONFIG_OFDEVICE=y
CONFIG_OF_GPIO=y
CONFIG_OF_BAREBOX_DRIVERS=y
CONFIG_OF_BAREBOX_ENV_IN_FS=y
CONFIG_OF_OVERLAY=y
CONFIG_OF_OVERLAY_LIVE=y
# CONFIG_AIODEV is not set

#
# serial drivers
#
# CONFIG_SERIAL_DEV_BUS is not set
CONFIG_DRIVER_SERIAL_LINUX_CONSOLE=y
# CONFIG_DRIVER_SERIAL_NS16550 is not set
# CONFIG_DRIVER_SERIAL_CADENCE is not set
# end of serial drivers

#
# Network drivers
#
# CONFIG_DRIVER_NET_ARC_EMAC is not set
# CONFIG_DRIVER_NET_CALXEDA_XGMAC is not set
# CONFIG_DRIVER_NET_DESIGNWARE is not set
# CONFIG_DRIVER_NET_ENC28J60 is not set
# CONFIG_DRIVER_NET_FSL_FMAN is not set
# CONFIG_DRIVER_NET_KS8851_MLL is not set
# CONFIG_DRIVER_NET_MICREL is not set
# CONFIG_DRIVER_NET_SMC911X is not set
# CONFIG_DRIVER_NET_SMC91111 is not set
CONFIG_DRIVER_NET_TAP=y

#
# phylib
#
# end of phylib
# end of Network drivers

#
# SPI drivers
#
CONFIG_SPI=y
CONFIG_SPI_MEM=y
# CONFIG_DRIVER_SPI_FSL_QUADSPI is not set
CONFIG_DRIVER_SPI_GPIO=y
# end of SPI drivers

CONFIG_I2C=y
CONFIG_I2C_ALGOBIT=y

#
# I2C Hardware Bus support
#
CONFIG_I2C_GPIO=y
# CONFIG_I2C_DESIGNWARE is not set
# end of I2C Hardware Bus support

# CONFIG_I2C_MUX is not set
CONFIG_MTD=y
CONFIG_MTD_WRITE=y
CONFIG_MTD_OOB_DEVICE=y
# CONFIG_MTD_RAW_DEVICE is not set
# CONFIG_MTD_CONCAT is not set

#
# MTD debug options
#
# CONFIG_MTD_PEB_DEBUG is not set

#
# Self contained MTD devices
#
# CONFIG_MTD_DATAFLASH is not set
CONFIG_MTD_M25P80=y
# CONFIG_MTD_SST25L is not set
# CONFIG_MTD_DOCG3 is not set
# CONFIG_MTD_MTDRAM is not set
# end of Self contained MTD devices

# CONFIG_DRIVER_CFI is not set
# CONFIG_NAND is not set
CONFIG_MTD_SPI_NOR=y
# CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not set
# CONFIG_SPI_CADENCE_QUADSPI is not set
# CONFIG_MTD_UBI is not set
# CONFIG_DISK is not set
# CONFIG_USB_HOST is not set
# CONFIG_USB_GADGET is not set
# CONFIG_USB_MUSB is not set
CONFIG_VIDEO=y
CONFIG_FRAMEBUFFER_CONSOLE=y
# CONFIG_DRIVER_VIDEO_FB_SSD1307 is not set
# CONFIG_DRIVER_VIDEO_SDL is not set
# CONFIG_DRIVER_VIDEO_BOCHS_ISA is not set
# CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT is not set
# CONFIG_DRIVER_VIDEO_SIMPLEFB is not set
# CONFIG_DRIVER_VIDEO_EDID is not set
# CONFIG_DRIVER_VIDEO_BACKLIGHT is not set

#
# Video encoder chips
#
# CONFIG_DRIVER_VIDEO_MTL017 is not set
# CONFIG_DRIVER_VIDEO_SIMPLE_PANEL is not set
CONFIG_SOUND=y
# CONFIG_SOUND_SDL is not set
# CONFIG_GPIO_BEEPER is not set
# CONFIG_SYNTH_SQUARES is not set
# CONFIG_MCI is not set

#
# Clocksource
#
CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
# CONFIG_CLOCKSOURCE_DW_APB_TIMER is not set
# end of Clocksource

#
# Multifunction device drivers
#
# CONFIG_MFD_ACT8846 is not set
# CONFIG_MFD_DA9053 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_LP3972 is not set
# CONFIG_MFD_MC13XXX is not set
# CONFIG_MFD_MC34704 is not set
# CONFIG_MFD_MC9SDZ60 is not set
# CONFIG_MFD_STMPE is not set
CONFIG_MFD_SYSCON=y
# CONFIG_MFD_TWL4030 is not set
# CONFIG_MFD_TWL6030 is not set
# CONFIG_MFD_STPMIC1 is not set
# CONFIG_MFD_ATMEL_FLEXCOM is not set
# end of Multifunction device drivers

#
# Misc devices
#
# CONFIG_JTAG is not set
# CONFIG_SRAM is not set
CONFIG_STATE_DRV=y
CONFIG_DEV_MEM=y
CONFIG_UBOOTVAR=y
# end of Misc devices

CONFIG_LED=y
CONFIG_LED_GPIO=y
CONFIG_LED_GPIO_OF=y
CONFIG_LED_GPIO_RGB=y
CONFIG_LED_GPIO_BICOLOR=y
CONFIG_LED_TRIGGERS=y
# CONFIG_LED_PCA955X is not set

#
# EEPROM support
#
CONFIG_EEPROM_AT25=y
CONFIG_EEPROM_AT24=y
# end of EEPROM support

#
# Input device support
#
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_INPUT_SPECIALKEYS is not set
# end of Input device support

CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_POLLER=y
# CONFIG_WATCHDOG_DW is not set
# CONFIG_PWM is not set
# CONFIG_HWRNG is not set

#
# DMA support
#
# end of DMA support

CONFIG_GPIOLIB=y

#
# GPIO
#
# CONFIG_GPIO_74164 is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_DESIGNWARE is not set
# CONFIG_GPIO_SX150X is not set
# CONFIG_GPIO_LIBFTDI1 is not set
# end of GPIO

# CONFIG_W1 is not set

#
# Pin controllers
#
# CONFIG_PINCTRL is not set
# end of Pin controllers

CONFIG_NVMEM=y
# CONFIG_NVMEM_SNVS_LPGPR is not set
# CONFIG_EEPROM_93XX46 is not set

#
# Bus devices
#
# end of Bus devices

# CONFIG_REGULATOR is not set

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

# CONFIG_RESET_CONTROLLER is not set
CONFIG_RTC_LIB=y
CONFIG_RTC_CLASS=y

#
# I2C RTC drivers
#
CONFIG_RTC_DRV_DS1307=y
# CONFIG_RTC_DRV_ABRACON is not set

#
# Firmware Drivers
#
# CONFIG_FIRMWARE_ALTERA_SERIAL is not set
# end of Firmware Drivers

# CONFIG_GENERIC_PHY is not set
# CONFIG_CRYPTO_HW is not set

#
# Memory controller drivers
#
# end of Memory controller drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# NVME Support
#
# end of NVME Support

CONFIG_REBOOT_MODE=y
CONFIG_SYSCON_REBOOT_MODE=y
# CONFIG_POWER_RESET_SYSCON is not set
# CONFIG_POWER_RESET_SYSCON_POWEROFF is not set
CONFIG_VIRTIO_MENU=y
# CONFIG_VIRTIO_MMIO is not set
# end of Drivers

#
# Filesystem support
#
CONFIG_FS=y
CONFIG_FS_LEGACY=y

#
# Some selected filesystems still use the legacy FS API.
#

#
# Consider updating them.
#
CONFIG_FS_AUTOMOUNT=y
CONFIG_FS_CRAMFS=y
CONFIG_FS_EXT4=y
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
CONFIG_FS_TFTP=y
CONFIG_FS_NFS=y
CONFIG_FS_FAT=y
CONFIG_FS_FAT_WRITE=y
CONFIG_FS_FAT_LFN=y
CONFIG_FS_JFFS2=y
CONFIG_FS_JFFS2_FS_DEBUG=0
# CONFIG_FS_JFFS2_COMPRESSION_OPTIONS is not set
CONFIG_FS_BPKFS=y
CONFIG_FS_UIMAGEFS=y
CONFIG_FS_PSTORE=y
CONFIG_FS_PSTORE_CONSOLE=y
CONFIG_FS_SQUASHFS=y
CONFIG_SQUASHFS_ZLIB=y
CONFIG_SQUASHFS_LZ4=y
CONFIG_SQUASHFS_LZO=y
CONFIG_SQUASHFS_XZ=y

#
# ZSTD support disabled
#
CONFIG_FS_UBOOTVARFS=y
# end of Filesystem support

#
# Library routines
#
CONFIG_PARAMETER=y
CONFIG_UNCOMPRESS=y
CONFIG_ZLIB=y
CONFIG_BZLIB=y
CONFIG_LZ4_DECOMPRESS=y
# CONFIG_ZSTD_DECOMPRESS is not set
CONFIG_XZ_DECOMPRESS=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
CONFIG_BASE64=y
CONFIG_GENERIC_FIND_NEXT_BIT=y
CONFIG_PROCESS_ESCAPE_SEQUENCE=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_FNMATCH=y
CONFIG_QSORT=y
CONFIG_XYMODEM=y
# CONFIG_RATP is not set
# CONFIG_ALLOW_PRNG_FALLBACK is not set
# CONFIG_CRC_CCITT is not set
# CONFIG_CRC8 is not set

#
# Library gui routines
#
CONFIG_IMAGE_RENDERER=y
CONFIG_2D_PRIMITIVES=y
CONFIG_BMP=y
CONFIG_PNG=y
CONFIG_LODEPNG=y
# CONFIG_PICOPNG is not set
# end of Library gui routines

CONFIG_FONTS=y
CONFIG_FONT_8x16=y
# CONFIG_FONT_8x8 is not set
CONFIG_FONT_7x14=y
CONFIG_FONT_MINI_4x6=y
# CONFIG_FONT_CUSTOM_16X is not set
# CONFIG_FONT_6x8 is not set
CONFIG_BAREBOX_LOGO=y
CONFIG_BAREBOX_LOGO_64=y
CONFIG_BAREBOX_LOGO_240=y
CONFIG_BAREBOX_LOGO_320=y
CONFIG_BAREBOX_LOGO_400=y
CONFIG_BAREBOX_LOGO_640=y
CONFIG_PRINTF_UUID=y
# CONFIG_NLS is not set
# CONFIG_BLOBGEN is not set
CONFIG_ARCH_HAS_STACK_DUMP=y
# end of Library routines

#
# Crypto support
#
CONFIG_CRC32=y
CONFIG_CRC_ITU_T=y
CONFIG_DIGEST=y
CONFIG_MD5=y
CONFIG_SHA1=y
CONFIG_SHA224=y
CONFIG_SHA256=y
CONFIG_SHA384=y
CONFIG_SHA512=y
CONFIG_DIGEST_HMAC=y
# CONFIG_DIGEST_CRC32_GENERIC is not set
CONFIG_DIGEST_MD5_GENERIC=y
CONFIG_DIGEST_SHA1_GENERIC=y
CONFIG_DIGEST_SHA224_GENERIC=y
CONFIG_DIGEST_SHA256_GENERIC=y
CONFIG_DIGEST_SHA384_GENERIC=y
CONFIG_DIGEST_SHA512_GENERIC=y
CONFIG_DIGEST_HMAC_GENERIC=y
CONFIG_CRYPTO_KEYSTORE=y
# end of Crypto support

#
# Firmware files
#
CONFIG_EXTRA_FIRMWARE_DIR="firmware"
# end of Firmware files

#
# Host Tools
#
# CONFIG_COMPILE_HOST_TOOLS is not set
# end of Host Tools

Please let me know for further information.

Thanks and regards,
Neeraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

