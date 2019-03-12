Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3WMt-0000WP-P8
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 01:38:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so879766wrm.5
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2019 18:38:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190311134125.10946-1-d.brandt@phytec.de>
In-Reply-To: <20190311134125.10946-1-d.brandt@phytec.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Mar 2019 18:37:57 -0700
Message-ID: <CAHQ1cqHAGSyzJbxeEKW6-Y8g79nv3iMZZGr-qy2pY401=V5b5w@mail.gmail.com>
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
Subject: Re: [PATCH] commands: bootaux: New command bootaux for iMX
To: David Brandt <d.brandt@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 11, 2019 at 6:41 AM David Brandt <d.brandt@phytec.de> wrote:
>
> This patch adds the bootaux command which starts
> auxiliary cores of iMX processors, currently only
> for iMX8MQ. This is based on the u-boot-imx
> command and shares the behaviour.
>
> The currently unnecessary parameter for the core
> to start is necessary for the iMX8QM and other
> processors having multiple auxiliary cores.
>

Not saying that there's anything wrong with this patch, but I am
guessing that upstream Linux will eventually implement this
functionality using remoteproc framework. Maybe now would be a good
time to add a very basic version of it to Barebox? Another option to
make this a little bit more flexible would be to implement this using
firmwaremgr framework similar to
drivers/frimware/{socfpga.c,altera_serial.c}. Anyway, just a couple of
suggestions that I had.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
