Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oh1C6-0000lC-3W
	for barebox@lists.infradead.org; Thu, 05 Aug 2010 14:13:19 +0000
Date: Thu, 5 Aug 2010 17:13:04 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100805141304.GD3004@jasper.tkos.co.il>
References: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
	<20100805122349.GC24069@game.jcrosoft.org>
	<20100805124307.GC3004@jasper.tkos.co.il>
	<20100805134114.GE24069@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100805134114.GE24069@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Thu, Aug 05, 2010 at 03:41:14PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:43 Thu 05 Aug     , Baruch Siach wrote:
> > On Thu, Aug 05, 2010 at 02:23:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD 
> > wrote:
> > > 	how about use the kernel printf format instead
> > 
> > How can I use printf to convert a string representation to binary?
> as example for ethernet address on the kernel we use %M or for UUID we %U to
> print it in the right format. so take a look on vsprintf.c

This is good for converting binary values to strings, not the other way around 
as we do here.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
