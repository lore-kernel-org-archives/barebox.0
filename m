Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot0-f171.google.com ([74.125.82.171])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUGak-0001v6-Bg
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 17:33:43 +0000
Received: by mail-ot0-f171.google.com with SMTP id 73so37254929otj.0
 for <barebox@lists.infradead.org>; Thu, 19 Jan 2017 09:33:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170119123849.dcyozsblhb45upde@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
 <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
 <20170118070738.g5a7rdahunjes4jl@pengutronix.de>
 <CAOMZO5CrofMwr24332mudXfi+hgKM4-WFwrrw0NXoFeNBRc62g@mail.gmail.com>
 <20170119091403.fapqdjnd2xpnylep@pengutronix.de>
 <CAOMZO5D4jSGrYPhsu=bk2wM_Dvzg-0zKC_JQTuyZpb7N-iqFtA@mail.gmail.com>
 <20170119123849.dcyozsblhb45upde@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Jan 2017 15:32:20 -0200
Message-ID: <CAOMZO5BmR+o2PFXa+AOKeirVQ+CD-0p7sQEkzCRJU7h=3O+7Qg@mail.gmail.com>
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

Hi Sascha,

On Thu, Jan 19, 2017 at 10:38 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> I have one issue with starting the kernel on i.MX7. The architected
> timer does not work. In U-Boot I found arch/arm/imx-common/syscounter.c
> in which the system counter is initialized. I just copied the code and
> it works, but I wonder what I am doing here. I can't find any
> documentation in the Reference Manual and also the 8MHz tick rate for
> the architected timer seems to fall from the sky. Do you have any
> additional documentation?

Let me try to get this information. Will let you know if I find out.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
