Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-f50.google.com ([209.85.218.50])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUBKG-0004ZU-7G
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 11:56:21 +0000
Received: by mail-oi0-f50.google.com with SMTP id j15so23324425oih.2
 for <barebox@lists.infradead.org>; Thu, 19 Jan 2017 03:55:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170119091403.fapqdjnd2xpnylep@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
 <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
 <20170118070738.g5a7rdahunjes4jl@pengutronix.de>
 <CAOMZO5CrofMwr24332mudXfi+hgKM4-WFwrrw0NXoFeNBRc62g@mail.gmail.com>
 <20170119091403.fapqdjnd2xpnylep@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Jan 2017 09:54:57 -0200
Message-ID: <CAOMZO5D4jSGrYPhsu=bk2wM_Dvzg-0zKC_JQTuyZpb7N-iqFtA@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 19, 2017 at 7:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Ok, found it. The i.MX7 has two iomux controllers, the regular one and
> the LPSR iomux controller. In the warp7 and other dts files the LPSR
> pins are attached to the regular controller, not the LPSR controller.
> I just sent out a series fixing this, you are on Cc.
> With U-Boot this problem does not occur since U-Boot uses it's own code
> to correctly configure the iomux_lpsr controller which is then not
> touched again from Linux.
> With this fix reset works in barebox and also reboot under Linux.

Thanks for the fix!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
