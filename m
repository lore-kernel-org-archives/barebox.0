Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQt7m-00052F-Gg
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 07:12:31 +0000
Received: by mail-la0-f44.google.com with SMTP id mc6so1704628lab.31
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 00:12:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1410159189-17328-8-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
 <1410159189-17328-8-git-send-email-antonynpavlov@gmail.com>
Date: Mon, 8 Sep 2014 09:12:06 +0200
Message-ID: <CAJfOKBxf1qQ4zm12REacELYMCSqye-OcUM45ZULprPNREhVcGQ@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: [PATCH v2 7/7] Documentation: add OpenRISC or1ksim emulator
 section
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Antony,

2014-09-08 8:53 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Franck Jullien <franck.jullien@gmail.com>
> ---
>  Documentation/boards/openrisc.rst | 51 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>
> diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
> new file mode 100644
> index 0000000..0b36712
> --- /dev/null
> +++ b/Documentation/boards/openrisc.rst
> @@ -0,0 +1,51 @@
> +OpenRISC
> +========
> +
> +or1ksim
> +-------
> +
> +Compile or1ksim emulator::
> +
> + $ cd ~/
> + $ git clone https://github.com/fjullien/or1ksim

You should use this repo: https://github.com/openrisc/or1ksim

> + $ cd or1ksim
> + $ ./configure
> + $ make
> +
> +Create minimal or1ksim.cfg file::
> +
> + section cpu
> +   ver = 0x12
> +   cfgr = 0x20
> +   rev = 0x0001
> + end
> +
> + section memory
> +   name = "RAM"
> +   type = unknown
> +   baseaddr = 0x00000000
> +   size = 0x02000000
> +   delayr = 1
> +   delayw = 2
> + end
> +
> + section uart
> +   enabled = 1
> +   baseaddr = 0x90000000
> +   irq = 2
> +   16550 = 1
> +   /* channel = "tcp:10084" */
> +   channel = "xterm:"
> + end
> +
> + section ethernet
> +   enabled = 1
> +   baseaddr = 0x92000000
> +   irq = 4
> +   rtx_type = "tap"
> +   tap_dev = "tap0"
> + end
> +
> +Run or1ksim::
> +
> + $ ~/or1ksim/sim -f or1ksim.cfg barebox
> --
> 2.1.0
>

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
