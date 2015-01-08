Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9CiS-0004FR-Bm
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 13:01:33 +0000
Received: from mail176.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id F3C98FF8DAC
 for <barebox@lists.infradead.org>; Thu,  8 Jan 2015 14:01:07 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1420700976-24306-1-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 8 Jan 2015 21:00:54 +0800
Message-Id: <00715747-959B-4ED9-A35A-6DC161FA656D@jcrosoft.com>
References: <1420700976-24306-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] driver: workaroud resource request that conflicts with
 errno PTR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


> On Jan 8, 2015, at 3:09 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> broken since
> 
> commit ed6e965824303255cacc1c1a195d3684caa26bce
> Author:     Sascha Hauer <s.hauer@pengutronix.de>
> resource: Let dev_request_mem_region return an error pointer
> 
> Introduce dev_request_mem_region_err_null
> 
> only used on platform like at91 where the resource address conflicts
> with errno PTR.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

good for me

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
