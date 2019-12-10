Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehKh-0005aq-Dd
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 15:21:52 +0000
Date: Tue, 10 Dec 2019 16:21:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191210152149.eymit4nvxa2prbzf@pengutronix.de>
References: <1575990387-9905-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575990387-9905-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH] habv4: add the possibility to changing the signing area
 from Kconfig
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2019 at 04:06:27PM +0100, Maik Otto wrote:
> the whole barebox with mbr and partition table will be signed by default
> add the possibility in the Kconfig to change from full signing to skip-mbr
> and from-dcdofs

Not signing the MBR seems the right thing to do. Do we need it
configurable at all or would it be better to just always skip the first
KiB?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
