Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUz8p-0005r9-RG
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 11:13:00 +0000
Date: Mon, 28 Nov 2011 12:12:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111128111238.GV27267@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-6-git-send-email-s.hauer@pengutronix.de>
 <20111128110331.GE15008@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111128110331.GE15008@game.jcrosoft.org>
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
Subject: Re: [PATCH 05/14] armlinux: cleanup linux vars
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 28, 2011 at 12:03:31PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> > arch_number is currently exported to the environment but not read back
> > on boot time which is rather confusing. system_rev and system_serial
> > are not exported to the environment but can be set in board specific
> > code.
> > This patch exports all these variables to the environment and reads them
> > back on boot time. All variables get a armlinux_ prefix, so the
> > arch_number environment variable gets renamed.
> I'm using it so please do not remove the old arch_number

I'm not removing it, just changing the name. Can't you update the name
in your environment?

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
