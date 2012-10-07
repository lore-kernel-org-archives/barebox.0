Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpie-0007FQ-57
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 12:12:28 +0000
Received: by mail-pa0-f49.google.com with SMTP id bi5so3451640pad.36
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2012 05:12:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121007103434.GF1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <20121007103434.GF1322@pengutronix.de>
Date: Sun, 7 Oct 2012 14:12:26 +0200
Message-ID: <CAAMcf8AppGVVgLmMG7YvFpE32-zu-3dmmim-MRtNvfFiVin23A@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/11] archosg9: add support for tablet, third round
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Oct 7, 2012 at 12:34 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi vj,
>
> On Sat, Oct 06, 2012 at 12:33:02AM +0200, vj wrote:
> > Hello,
> >  here is the third round of patches including most of the
> >  modifications suggested by your comments, which are greatly
> >  appreciated.  one of the modifications not done is the move of the
> >  usb-booting infrastructure into a driver. Jean, can you please add
> >  more information about this? Thanks.
> >
> >  scripts/checkpatch.pl returns two errors: "Macros with complex values
> >  should be enclosed in parenthesis", but in this case parenthesis
> >  can't be added, any suggestion?
>
> Could you post the macros which give this error?
>
> Overall apart from the little comments I made the series looks quite
> good now. Thanks, nice work ;)
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


The macros are:
#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40

which are used in this way:
#define FORMAT        "%c[%d;%d;%dm"
#define host_print(fmt, arg...)    printf(FORMAT fmt FORMAT"\n",
HOST_FORMAT, ##arg, TARGET_FORMAT)
printf(FORMAT, TARGET_FORMAT);

The reason is that scripts/omap4_usbboot has to print two types of
messages, the ones comming from the OMAP4 and the ones coming from the
PC. This is the way chosen to differentiate them.

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
