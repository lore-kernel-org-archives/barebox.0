Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oh0lj-0007Ro-Hd
	for barebox@lists.infradead.org; Thu, 05 Aug 2010 13:46:03 +0000
Date: Thu, 5 Aug 2010 15:41:14 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100805134114.GE24069@game.jcrosoft.org>
References: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
	<20100805122349.GC24069@game.jcrosoft.org>
	<20100805124307.GC3004@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100805124307.GC3004@jasper.tkos.co.il>
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
Subject: Re: [PATCH 1/2] misc: introduce string_to_bin
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi,
On 15:43 Thu 05 Aug     , Baruch Siach wrote:
> Hi Jean-Christophe,
> 
> On Thu, Aug 05, 2010 at 02:23:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 	how about use the kernel printf format instead
> 
> How can I use printf to convert a string representation to binary?
as example for ethernet address on the kernel we use %M or for UUID we %U to
print it in the right format. so take a look on vsprintf.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
