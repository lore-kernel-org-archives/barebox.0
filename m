Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFpRW-0003Su-GH
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 16:21:51 +0000
Date: Thu, 5 Apr 2012 18:21:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405162141.GH3852@pengutronix.de>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
 <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
 <20120405065455.GW3852@pengutronix.de>
 <CAD9ZU8Ce_s5pq8Y6wm5dXo_rv-fg2pYx1O+T9bh+7Kq088ySFA@mail.gmail.com>
 <20120405092738.GB3852@pengutronix.de>
 <CAD9ZU8BmxwrSDB18DukqshH8C1mKq+=WzxVsrw232x2hsce+Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD9ZU8BmxwrSDB18DukqshH8C1mKq+=WzxVsrw232x2hsce+Ug@mail.gmail.com>
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
Subject: Re: debugging on board
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 05, 2012 at 02:28:58PM +0200, Gabriel Tisan wrote:
> So, the opcodes from the start of the file barebox.S until
> __mmu_cache_flush(inclusive) including
> reset & imx_nand_load_image make 1372 bytes, lower than 2K.

So far for the obvious possibilities. Sorry, I can't give you any
further general advices, except the one I already have given: Look for a
gpio and try to set it from different locations and see if you get there
or not.

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
