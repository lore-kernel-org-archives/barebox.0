Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TElRv-0000BU-Dl
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 18:26:08 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F054D1080257
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 20:31:54 +0200 (CEST)
Date: Thu, 20 Sep 2012 20:23:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920182332.GD26553@game.jcrosoft.org>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
 <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/5] phylib: bus reset function
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 17:31 Thu 20 Sep     , Renaud Barbier wrote:
> Added an entry point for a bus reset function.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  drivers/net/phy/phy.c |    3 +++
>  include/miidev.h      |    1 +
>  2 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 5406ea3..d9f5409 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -129,6 +129,9 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
>  	unsigned int i;
>  	int ret = -EINVAL;
>  
> +	if (bus->reset)
> +		bus->reset(bus);
> +
I do not like this we should not touch the bus at phy connect

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
