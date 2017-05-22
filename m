Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCko7-0002kZ-Mn
 for barebox@lists.infradead.org; Mon, 22 May 2017 10:43:25 +0000
Date: Mon, 22 May 2017 12:43:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170522104301.tq27k4v3ftavwpbp@pengutronix.de>
References: <20170522084930.6072-1-jbe@pengutronix.de>
 <20170522102643.outnjbd4ymnrph5f@pengutronix.de>
 <201705221234.39274.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201705221234.39274.jbe@pengutronix.de>
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
Subject: Re: [PATCH] PPC: request a consistent memory layout (part II)
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 22, 2017 at 12:34:38PM +0200, Juergen Borleis wrote:
> Hi Sascha,
> 
> On Monday 22 May 2017 12:26:43 Sascha Hauer wrote:
> > [...]
> > I have the feeling that we should actively put the vector table to one
> > of the two locations, so we should implicitly know where it is and not
> > have to test the MSR_IP bit.
> 
> Sometimes it depends on the boot mode. You can locate the NOR flash memory 
> at 0x00000 or 0xfff00000 (via bootstrap pins) and in the latter case the 
> vector table is at 0xfff00000 (at least the reset vector)!

Regardless of the bootmode in the end the vector table should be in
SDRAM, no? With a vector table in flash no vector except the reset
vector will point to a valid address and thus we won't be able to catch
any exceptions. Looing at the powerpc code we really do have exception
handling code, but I don't know how broken it actually is.

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
