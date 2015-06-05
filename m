Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0pt3-0007Eg-BB
 for barebox@lists.infradead.org; Fri, 05 Jun 2015 11:34:09 +0000
Date: Fri, 5 Jun 2015 13:33:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150605113347.GE6325@pengutronix.de>
References: <1433493800-23732-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433493800-23732-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] net: dhcp: Fix CONFIG_ENVIRONMENT_VARIABLES check
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 05, 2015 at 10:43:20AM +0200, Wadim Egorov wrote:
> Please squash this patch into
> [PATCH v3 2/3] net: dhcp: Split dhcp funcionality & add dhcp command

Ok, did that. You can also directly do a git commit --fixup=xxx and send
that patch. This makes it easy for me to squash it into the correct
patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
