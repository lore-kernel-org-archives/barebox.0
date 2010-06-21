Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OQcQR-0002ZY-6B
	for barebox@lists.infradead.org; Mon, 21 Jun 2010 08:32:15 +0000
Message-ID: <4C1F2385.20807@erwinrol.com>
Date: Mon, 21 Jun 2010 10:32:05 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
	<20100621063247.GB12115@pengutronix.de>
In-Reply-To: <20100621063247.GB12115@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fat32 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer wrote:

> This is surely possible, though you might be better off with the U-Boot
> code as a template for porting. You'll probably also need dos
> partitioning support.

That is (atleast in part, no extended partitions) already there. The x86 
target has DOS partition support. And i have EFI GUID partition support 
here, that should be merged as soon as i have time to clean it up.


Both things probably should than be moved out of the x86 target and 
moved to a more generic place.


- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
