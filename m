Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnRHX-000734-J5
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 07:17:24 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 23 Aug 2010 09:16:16 +0200
References: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
	<20100816091330.GN27749@pengutronix.de>
	<AANLkTi=i9OVu5g1i1_AXquB_TzX8uE9o6=vMTqmxmhRo@mail.gmail.com>
In-Reply-To: <AANLkTi=i9OVu5g1i1_AXquB_TzX8uE9o6=vMTqmxmhRo@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201008230916.16725.jbe@pengutronix.de>
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
Subject: Re: changes for reducing DDR size
To: barebox@lists.infradead.org

kuldeep ghan wrote:
> [...]
>  I am adding two device using armlinux_add_dram() each with 32MB size and
> map_base address of 0xA0000000 and 0xB0000000 respectively.. Is that fine
> or Can I have one device registered with map_base address of 0xA0000000 and
> 64MB size??

You are using non continuous memory. I'm not sure, if that is handled in 
barebox correctly. Also Linux may have a problem with this kind of memory 
organization.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
