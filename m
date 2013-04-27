Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f250.mail.ru ([217.69.128.175])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVx0t-0001Dd-LS
 for barebox@lists.infradead.org; Sat, 27 Apr 2013 04:45:32 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 27 Apr 2013 08:45:26 +0400
Message-ID: <1367037926.843353583@f250.mail.ru>
In-Reply-To: <20130426205412.GX32299@pengutronix.de>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-5-git-send-email-shc_work@mail.ru>
 <20130426205412.GX32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCA1LzldIE1DSTogaW14LWVzZGhjOiBGaXggcG9zc2li?=
 =?UTF-8?B?bGUgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNl?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Fri, Apr 26, 2013 at 08:41:10PM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/mci/imx-esdhc.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> > index 8c2695c..8194b4d 100644
> > --- a/drivers/mci/imx-esdhc.c
> > +++ b/drivers/mci/imx-esdhc.c
> > @@ -450,10 +450,15 @@ static int esdhc_card_present(struct mci_host *mci)
> >  static int esdhc_init(struct mci_host *mci, struct device_d *dev)
> >  {
> >  	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
> > -	struct fsl_esdhc __iomem *regs = host->regs;
> > +	struct fsl_esdhc __iomem *regs;
> >  	int timeout = 1000;
> >  	int ret = 0;
> >  
> > +	if (!host)
> > +		return -EIO;
> 
> How should that happen? The mci core should not call this callback with
> a NULL pointer, and if it does, there is a bug in the mci core.

Pls, just drop 5/9 and 9/9.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
