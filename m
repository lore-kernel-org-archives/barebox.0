Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x242.google.com ([2607:f8b0:4001:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aKzjK-0002hV-94
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 02:39:45 +0000
Received: by mail-ig0-x242.google.com with SMTP id h5so5439892igh.0
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 18:39:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1452251635-14689-3-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-3-git-send-email-s.hauer@pengutronix.de>
Date: Sun, 17 Jan 2016 18:39:19 -0800
Message-ID: <CAHQ1cqEtTkHEnQDeR1UyrgOJ=zsGtxMuThE+dwmp-UCrvm0MYQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/8] barebox remote control
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Discovered some build problems after I was done testing this code:

On Fri, Jan 8, 2016 at 3:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> This adds the ability to control barebox over serial lines. The regular
> console is designed for human input and is unsuitable for controlling
> barebox from scripts since characters can be lost on both ends, the data
> stream contains escape sequences and the prompt cannot be easily matched
> upon.
> This approach is based on the RATP protocol. RATP packages start with a
> binary 0x01 which does not occur in normal console data. Whenever a
> 0x01 character is detected in the console barebox goes into RATP mode.
> The RATP packets contain a simple structure with a command/respone
> type and data for that type. Currently defined types are:
>
> BB_RATP_TYPE_COMMAND (host->barebox):
>         Execute a command in the shell
> BB_RATP_TYPE_COMMAND_RETURN (barebox->host)
>         Sends return value of the command back to the host, also means
>         barebox is ready for the next command
> BB_RATP_TYPE_CONSOLEMSG (barebox->host)
>         Console message from barebox
>
> Planned but not yet implemented are:
>
> BB_RATP_TYPE_PING (host->barebox)
> BB_RATP_TYPE_PONG (barebox->host)
>         For testing purposes
> BB_RATP_TYPE_GETENV (host->barebox)
> BB_RATP_TYPE_GETENV_RETURN (barebox->host)
>         Get values of environment variables
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/Kconfig   |  10 ++
>  common/Makefile  |   2 +
>  common/console.c |  26 ++-
>  common/ratp.c    | 511 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  crypto/Kconfig   |   1 +
>  fs/Makefile      |   1 +
>  include/ratp.h   |   2 +-
>  lib/readline.c   |   7 +
>  8 files changed, 556 insertions(+), 4 deletions(-)
>  create mode 100644 common/ratp.c
>
> diff --git a/common/Kconfig b/common/Kconfig
> index 8e79509..2b5943b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -611,6 +611,16 @@ config PBL_CONSOLE
>           must be running at the address it's linked at and bss must
>           be cleared. On ARM that would be after setup_c().
>
> +config CONSOLE_RATP
> +       bool
> +       select RATP
> +       prompt "RATP console support"
> +       help
> +         This option adds support for remote controlling barebox via serial
> +         port. The regular console is designed for human interaction whereas
> +         this option adds a machine readable interface for controlling barebox.
> +         Say yes here if you want to control barebox from a remote host.
> +
>  config PARTITION
>         bool
>         prompt "Enable Partitions"
> diff --git a/common/Makefile b/common/Makefile
> index 56e6bec..5eb3c96 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -45,6 +45,7 @@ obj-$(CONFIG_RESET_SOURCE)    += reset_source.o
>  obj-$(CONFIG_SHELL_HUSH)       += hush.o
>  obj-$(CONFIG_SHELL_SIMPLE)     += parser.o
>  obj-$(CONFIG_STATE)            += state.o
> +obj-$(CONFIG_RATP)             += ratp.o
>  obj-$(CONFIG_UIMAGE)           += image.o uimage.o
>  obj-$(CONFIG_MENUTREE)         += menutree.o
>  obj-$(CONFIG_EFI_GUID)         += efi-guid.o
> @@ -54,6 +55,7 @@ obj-$(CONFIG_IMD)             += imd.o
>  obj-$(CONFIG_FILE_LIST)                += file-list.o
>  obj-$(CONFIG_FIRMWARE)         += firmware.o
>  obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
> +obj-$(CONFIG_CONSOLE_RATP)     += ratp.o
>
>  quiet_cmd_pwd_h = PWDH    $@
>  ifdef CONFIG_PASSWORD
> diff --git a/common/console.c b/common/console.c
> index 4a1d257..9924964 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -303,6 +303,8 @@ int console_unregister(struct console_device *cdev)
>  }
>  EXPORT_SYMBOL(console_unregister);
>
> +int barebox_ratp(struct console_device *cdev);

This will break when RATP is not enabled in Kconfig

> +
>  static int getc_raw(void)
>  {
>         struct console_device *cdev;
> @@ -313,8 +315,16 @@ static int getc_raw(void)
>                         if (!(cdev->f_active & CONSOLE_STDIN))
>                                 continue;
>                         active = 1;
> -                       if (cdev->tstc(cdev))
> -                               return cdev->getc(cdev);
> +                       if (cdev->tstc(cdev)) {
> +                               int ch = cdev->getc(cdev);
> +
> +                               if (ch == 0x01) {
> +                                       barebox_ratp(cdev);
> +                                       return -1;
> +                               }
> +
> +                               return ch;
> +                       }
>                 }
>                 if (!active)
>                         /* no active console found. bail out */
> @@ -349,16 +359,26 @@ int getc(void)
>         start = get_time_ns();
>         while (1) {
>                 if (tstc_raw()) {
> -                       kfifo_putc(console_input_fifo, getc_raw());
> +                       int c = getc_raw();
> +
> +                       if (c < 0)
> +                               break;
> +
> +                       kfifo_putc(console_input_fifo, c);
>
>                         start = get_time_ns();
>                 }
> +
>                 if (is_timeout(start, 100 * USECOND) &&
>                                 kfifo_len(console_input_fifo))
>                         break;
>         }
>
> +       if (!kfifo_len(console_input_fifo))
> +               return -1;
> +
>         kfifo_getc(console_input_fifo, &ch);
> +
>         return ch;
>  }
>  EXPORT_SYMBOL(getc);
> diff --git a/common/ratp.c b/common/ratp.c
> new file mode 100644
> index 0000000..2fef3cc
> --- /dev/null
> +++ b/common/ratp.c
> @@ -0,0 +1,511 @@
> +/*
> + * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#define pr_fmt(fmt) "barebox-ratp: " fmt
> +
> +#include <common.h>
> +#include <command.h>
> +#include <kfifo.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <ratp.h>
> +#include <command.h>
> +#include <byteorder.h>
> +#include <environment.h>
> +#include <kfifo.h>
> +#include <poller.h>
> +#include <linux/sizes.h>
> +#include <ratp_bb.h>
> +#include <fs.h>
> +
> +#define BB_RATP_TYPE_COMMAND           1
> +#define BB_RATP_TYPE_COMMAND_RETURN    2
> +#define BB_RATP_TYPE_CONSOLEMSG                3
> +#define BB_RATP_TYPE_PING              4
> +#define BB_RATP_TYPE_PONG              5
> +#define BB_RATP_TYPE_GETENV            6
> +#define BB_RATP_TYPE_GETENV_RETURN     7
> +#define BB_RATP_TYPE_FS                        8
> +#define BB_RATP_TYPE_FS_RETURN         9
> +
> +struct ratp_bb {
> +       uint16_t type;
> +       uint16_t flags;
> +       uint8_t data[];
> +};
> +
> +struct ratp_bb_command_return {
> +       uint32_t errno;
> +};
> +
> +struct ratp_ctx {
> +       struct console_device *cdev;
> +       struct ratp ratp;
> +       int ratp_status;
> +       struct console_device ratp_console;
> +       int have_synch;
> +       int in_ratp_console;
> +
> +       u8 sendbuf[256];
> +       u8 sendbuf_len;
> +
> +       int old_active;
> +
> +       struct kfifo *console_recv_fifo;
> +       struct kfifo *console_transmit_fifo;
> +
> +       struct ratp_bb_pkt *fs_rx;
> +
> +       struct poller_struct poller;
> +};
> +
> +static int console_recv(struct ratp *r, uint8_t *data)
> +{
> +       struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
> +       struct console_device *cdev = ctx->cdev;
> +
> +       if (ctx->have_synch) {
> +               ctx->have_synch = 0;
> +               *data = 0x01;
> +               return 0;
> +       }
> +
> +       if (!cdev->tstc(cdev))
> +               return -EAGAIN;
> +
> +       *data = cdev->getc(cdev);
> +
> +       return 0;
> +}
> +
> +static int console_send(struct ratp *r, void *pkt, int len)
> +{
> +       struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
> +       struct console_device *cdev = ctx->cdev;
> +       const uint8_t *buf = pkt;
> +       int i;
> +
> +       for (i = 0; i < len; i++)
> +               cdev->putc(cdev, buf[i]);
> +
> +       return 0;
> +}
> +
> +static void *xmemdup_add_zero(const void *buf, int len)
> +{
> +       void *ret;
> +
> +       ret = xzalloc(len + 1);
> +       *(uint8_t *)(ret + len) = 0;
> +       memcpy(ret, buf, len);
> +
> +       return ret;
> +}
> +
> +static void ratp_queue_console_tx(struct ratp_ctx *ctx)
> +{
> +       u8 buf[255];
> +       struct ratp_bb *rbb = (void *)buf;
> +       unsigned int now, maxlen = 255 - sizeof(*rbb);
> +       int ret;
> +
> +       rbb->type = cpu_to_be16(BB_RATP_TYPE_CONSOLEMSG);
> +
> +       while (1) {
> +               now = min(maxlen, kfifo_len(ctx->console_transmit_fifo));
> +               if (!now)
> +                       break;
> +
> +               kfifo_get(ctx->console_transmit_fifo, rbb->data, now);
> +
> +               ret = ratp_send(&ctx->ratp, rbb, now + sizeof(*rbb));
> +               if (ret)
> +                       return;
> +       }
> +}
> +
> +static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
> +{
> +       void *buf;
> +       struct ratp_bb *rbb;
> +       struct ratp_bb_command_return *rbb_ret;
> +       int len = sizeof(*rbb) + sizeof(*rbb_ret);
> +       int ret;
> +
> +       ratp_queue_console_tx(ctx);
> +
> +       buf = xzalloc(len);
> +       rbb = buf;
> +       rbb_ret = buf + sizeof(*rbb);
> +
> +       rbb->type = cpu_to_be16(BB_RATP_TYPE_COMMAND_RETURN);
> +       rbb_ret->errno = cpu_to_be32(errno);
> +
> +       ret = ratp_send(&ctx->ratp, buf, len);
> +
> +       free(buf);
> +
> +       return ret;
> +}
> +
> +static int ratp_bb_send_pong(struct ratp_ctx *ctx)
> +{
> +       void *buf;
> +       struct ratp_bb *rbb;
> +       int len = sizeof(*rbb);
> +       int ret;
> +
> +       buf = xzalloc(len);
> +       rbb = buf;
> +
> +       rbb->type = cpu_to_be16(BB_RATP_TYPE_PONG);
> +
> +       ret = ratp_send(&ctx->ratp, buf, len);
> +
> +       free(buf);
> +
> +       return ret;
> +}
> +
> +static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
> +{
> +       void *buf;
> +       struct ratp_bb *rbb;
> +       int len, ret;
> +
> +       if (!val)
> +           val = "";
> +
> +       len = sizeof(*rbb) + strlen(val);
> +       buf = xzalloc(len);
> +       rbb = buf;
> +       strcpy(rbb->data, val);
> +
> +       rbb->type = cpu_to_be16(BB_RATP_TYPE_GETENV_RETURN);
> +
> +       ret = ratp_send(&ctx->ratp, buf, len);
> +
> +       free(buf);
> +
> +       return ret;
> +}
> +
> +static char *ratp_command;
> +static struct ratp_ctx *ratp_command_ctx;
> +
> +static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
> +{
> +       const struct ratp_bb *rbb = buf;
> +       struct ratp_bb_pkt *pkt;
> +       int dlen = len - sizeof(struct ratp_bb);
> +       char *varname;
> +       int ret = 0;
> +
> +       switch (be16_to_cpu(rbb->type)) {
> +       case BB_RATP_TYPE_COMMAND:
> +               if (ratp_command)
> +                       return 0;
> +
> +               ratp_command = xmemdup_add_zero(&rbb->data, dlen);
> +               ratp_command_ctx = ctx;
> +               pr_debug("got command: %s\n", ratp_command);
> +
> +               break;
> +
> +       case BB_RATP_TYPE_COMMAND_RETURN:
> +       case BB_RATP_TYPE_PONG:
> +               break;
> +
> +       case BB_RATP_TYPE_CONSOLEMSG:
> +
> +               kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
> +               break;
> +
> +       case BB_RATP_TYPE_PING:
> +               ret = ratp_bb_send_pong(ctx);
> +               break;
> +
> +       case BB_RATP_TYPE_GETENV:
> +               varname = xmemdup_add_zero(&rbb->data, dlen);
> +
> +               ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
> +               break;
> +
> +       case BB_RATP_TYPE_FS_RETURN:
> +               pkt = xzalloc(sizeof(*pkt) + dlen);
> +               pkt->len = dlen;
> +               memcpy(pkt->data, &rbb->data, dlen);
> +               ctx->fs_rx = pkt;
> +               break;
> +       default:
> +               printf("%s: unhandled packet type 0x%04x\n", __func__, be16_to_cpu(rbb->type));
> +               break;
> +       }
> +
> +       return ret;
> +}
> +
> +static int ratp_console_getc(struct console_device *cdev)
> +{
> +       struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
> +       unsigned char c;
> +
> +       if (!kfifo_len(ctx->console_recv_fifo))
> +               return -1;
> +
> +       kfifo_getc(ctx->console_recv_fifo, &c);
> +
> +       return c;
> +}
> +
> +static int ratp_console_tstc(struct console_device *cdev)
> +{
> +       struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
> +
> +       return kfifo_len(ctx->console_recv_fifo) ? 1 : 0;
> +}
> +
> +static int ratp_console_puts(struct console_device *cdev, const char *s)
> +{
> +       struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
> +       int len = 0;
> +
> +       len = strlen(s);
> +
> +       if (ratp_busy(&ctx->ratp))
> +               return len;
> +
> +       kfifo_put(ctx->console_transmit_fifo, s, len);
> +
> +       return len;
> +}
> +
> +static void ratp_console_putc(struct console_device *cdev, char c)
> +{
> +       struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
> +
> +       if (ratp_busy(&ctx->ratp))
> +               return;
> +
> +       kfifo_putc(ctx->console_transmit_fifo, c);
> +}
> +
> +static int ratp_console_register(struct ratp_ctx *ctx)
> +{
> +       int ret;
> +
> +       ctx->ratp_console.tstc = ratp_console_tstc;
> +       ctx->ratp_console.puts = ratp_console_puts;
> +       ctx->ratp_console.putc = ratp_console_putc;
> +       ctx->ratp_console.getc = ratp_console_getc;
> +       ctx->ratp_console.devname = "ratpconsole";
> +       ctx->ratp_console.devid = DEVICE_ID_SINGLE;
> +
> +       ret = console_register(&ctx->ratp_console);
> +       if (ret) {
> +               pr_err("registering failed with %s\n", strerror(-ret));
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +void ratp_run_command(void)
> +{
> +       int ret;
> +
> +       if (!ratp_command)
> +               return;
> +
> +       pr_debug("running command: %s\n", ratp_command);
> +
> +       ret = run_command(ratp_command);
> +
> +       free(ratp_command);
> +       ratp_command = NULL;
> +
> +       ratp_bb_send_command_return(ratp_command_ctx, ret);
> +}
> +
> +static const char *ratpfs_mount_path;
> +
> +int barebox_ratp_fs_mount(const char *path)
> +{
> +       if (path && ratpfs_mount_path)
> +               return -EBUSY;
> +
> +       ratpfs_mount_path = path;
> +
> +       return 0;
> +}
> +
> +static void ratp_console_unregister(struct ratp_ctx *ctx)
> +{
> +       int ret;
> +
> +       console_set_active(&ctx->ratp_console, 0);
> +       poller_unregister(&ctx->poller);
> +       ratp_close(&ctx->ratp);
> +       console_set_active(ctx->cdev, ctx->old_active);
> +       ctx->cdev = NULL;
> +
> +       if (ratpfs_mount_path) {
> +               ret = umount(ratpfs_mount_path);
> +               if (!ret)
> +                       ratpfs_mount_path = NULL;
> +       }
> +}
> +
> +static void ratp_poller(struct poller_struct *poller)
> +{
> +       struct ratp_ctx *ctx = container_of(poller, struct ratp_ctx, poller);
> +       int ret;
> +       size_t len;
> +       void *buf;
> +
> +       ratp_queue_console_tx(ctx);
> +
> +       ret = ratp_poll(&ctx->ratp);
> +       if (ret == -EINTR)
> +               goto out;
> +       if (ratp_closed(&ctx->ratp))
> +               goto out;
> +
> +       ret = ratp_recv(&ctx->ratp, &buf, &len);
> +       if (ret < 0)
> +               return;
> +
> +       ratp_bb_dispatch(ctx, buf, len);
> +
> +       free(buf);
> +
> +       return;
> +
> +out:
> +       ratp_console_unregister(ctx);
> +}
> +
> +static int do_ratp_close(int argc, char *argv[])
> +{
> +       if (ratp_command_ctx && ratp_command_ctx->cdev)
> +               ratp_console_unregister(ratp_command_ctx);
> +       else
> +               printf("ratp is not active\n");
> +
> +       return 0;
> +}
> +
> +BAREBOX_CMD_START(ratp_close)
> +       .cmd    = do_ratp_close,
> +};
> +
> +int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
> +{
> +       struct ratp_ctx *ctx = ratp_command_ctx;
> +       struct ratp_bb *rbb;
> +       int len;
> +       u64 start;
> +
> +       if (!ctx)
> +               return -EINVAL;
> +
> +       ctx->fs_rx = NULL;
> +
> +       len = sizeof(*rbb) + tx->len;
> +       rbb = xzalloc(len);
> +       rbb->type = cpu_to_be16(BB_RATP_TYPE_FS);
> +       memcpy(rbb->data, tx->data, tx->len);
> +
> +       if (ratp_send(&ctx->ratp, rbb, len) != 0)
> +               pr_debug("failed to send port pkt\n");
> +
> +       free(rbb);
> +
> +       start = get_time_ns();
> +
> +       while (!ctx->fs_rx) {
> +               poller_call();
> +               if (ratp_closed(&ctx->ratp))
> +                       return -EIO;
> +               if (is_timeout(start, 10 * SECOND))
> +                       return -ETIMEDOUT;
> +       }
> +
> +       *rx = ctx->fs_rx;
> +
> +       pr_debug("%s: len %i\n", __func__, ctx->fs_rx->len);
> +
> +       return 0;
> +}
> +
> +int barebox_ratp(struct console_device *cdev)
> +{
> +       int ret;
> +       struct ratp_ctx *ctx;
> +       struct ratp *ratp;
> +
> +       if (ratp_command_ctx) {
> +               ctx = ratp_command_ctx;
> +       } else {
> +               ctx = xzalloc(sizeof(*ctx));
> +               ratp_command_ctx = ctx;
> +               ctx->ratp.send = console_send;
> +               ctx->ratp.recv = console_recv;
> +               ctx->console_recv_fifo = kfifo_alloc(512);
> +               ctx->console_transmit_fifo = kfifo_alloc(SZ_128K);
> +               ctx->poller.func = ratp_poller;
> +               ratp_console_register(ctx);
> +       }
> +
> +       if (ctx->cdev)
> +               return -EBUSY;
> +
> +       ratp = &ctx->ratp;
> +
> +       ctx->old_active = console_get_active(cdev);
> +       console_set_active(cdev, 0);
> +
> +       ctx->cdev = cdev;
> +       ctx->have_synch = 1;
> +
> +       ret = ratp_establish(ratp, false, 100);
> +       if (ret < 0)
> +               goto out;
> +
> +       ret = poller_register(&ctx->poller);
> +       if (ret)
> +               goto out1;
> +
> +       console_set_active(&ctx->ratp_console, CONSOLE_STDOUT | CONSOLE_STDERR |
> +                       CONSOLE_STDIN);
> +
> +       return 0;
> +
> +out1:
> +       ratp_close(ratp);
> +out:
> +       console_set_active(ctx->cdev, ctx->old_active);
> +       ctx->cdev = NULL;
> +
> +       return ret;
> +}
> +
> +static void barebox_ratp_close(void)
> +{
> +       if (ratp_command_ctx && ratp_command_ctx->cdev)
> +               ratp_console_unregister(ratp_command_ctx);
> +}
> +predevshutdown_exitcall(barebox_ratp_close);
> \ No newline at end of file
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 41145a3..fcf92c9 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -4,6 +4,7 @@ config CRC32
>         bool
>
>  config CRC16
> +       default y
>         bool
>
>  config CRC7
> diff --git a/fs/Makefile b/fs/Makefile
> index 4693205..befbdf2 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -14,3 +14,4 @@ obj-$(CONFIG_FS_UIMAGEFS)     += uimagefs.o
>  obj-$(CONFIG_FS_EFI)    += efi.o
>  obj-$(CONFIG_FS_EFIVARFS) += efivarfs.o
>  obj-$(CONFIG_FS_SMHFS) += smhfs.o
> +obj-$(CONFIG_RATP)     += ratpfs.o
> diff --git a/include/ratp.h b/include/ratp.h
> index b91d305..94fd004 100644
> --- a/include/ratp.h
> +++ b/include/ratp.h
> @@ -19,4 +19,4 @@ bool ratp_busy(struct ratp *ratp);
>
>  void ratp_run_command(void);
>
> -#endif /* __RATP_H */
> +#endif /* __RATP_H */
> \ No newline at end of file
> diff --git a/lib/readline.c b/lib/readline.c
> index c007e10..681f125 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -1,6 +1,8 @@
>  #include <common.h>
>  #include <readkey.h>
>  #include <init.h>
> +#include <poller.h>
> +#include <ratp.h>
>  #include <xfuncs.h>
>  #include <complete.h>
>  #include <linux/ctype.h>
> @@ -197,6 +199,11 @@ int readline(const char *prompt, char *buf, int len)
>         puts (prompt);
>
>         while (1) {
> +               while (!tstc()) {
> +                       poller_call();
> +                       ratp_run_command();

ratp_run_command() is not stubed out in <ratp.h> so this would break
linkage when RATP is not selected in Kconfig


> +               }
> +
>                 ichar = read_key();
>
>                 if ((ichar == '\n') || (ichar == '\r')) {
> --
> 2.6.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
