Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Om4N8-0003XH-Ki
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 12:37:35 +0000
Date: Thu, 19 Aug 2010 15:37:12 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100819123712.GC2421@tarshish>
References: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
	<20100805122349.GC24069@game.jcrosoft.org>
	<20100805124307.GC3004@jasper.tkos.co.il>
	<20100805134114.GE24069@game.jcrosoft.org>
	<20100805141304.GD3004@jasper.tkos.co.il>
	<20100819064347.GI454@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100819064347.GI454@game.jcrosoft.org>
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

On Thu, Aug 19, 2010 at 08:43:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:13 Thu 05 Aug     , Baruch Siach wrote:
> > On Thu, Aug 05, 2010 at 03:41:14PM +0200, Jean-Christophe PLAGNIOL-VILLARD 
> > wrote:
> > > On 15:43 Thu 05 Aug     , Baruch Siach wrote:
> > > > On Thu, Aug 05, 2010 at 02:23:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD 
> > > > wrote:
> > > > > 	how about use the kernel printf format instead
> > > > 
> > > > How can I use printf to convert a string representation to binary?
> > > as example for ethernet address on the kernel we use %M or for UUID we %U to
> > > print it in the right format. so take a look on vsprintf.c
> > 
> > This is good for converting binary values to strings, not the other way around 
> > as we do here.
> It's the same here u can do %xs to print it as hexa so it will be easier to
> use

Apparently I'm missing something obvious here. I'll try to clarify how I see 
things. Feel free to correct my understanding.

The various printf() variants take binary data as an argument, and translate 
it into a string representation, according to the format string.

The purposed string_to_bin() function does the opposite. It takes a string 
argument

const char* mac_str = "01:02:03:04:05:06";

and return the binary equivalent of this string in the buf pointer:

u8 mac[6];

string_to_bin(mac_str, mac, 6)

now the mac[] array contains the binary representation of the string mac_str, 
in big-endian order.

I've found no way to do the same with printf.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
