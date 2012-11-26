Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcuQd-0003Jq-EZ
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 08:52:37 +0000
Date: Mon, 26 Nov 2012 09:52:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126085233.GA10369@pengutronix.de>
References: <1353705059-7792-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353705059-7792-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/3] commands: md, mw: add '-x' option (swap bytes)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 24, 2012 at 01:10:56AM +0400, Antony Pavlov wrote:
> Most of my MIPS boards run barebox in big-endian mode, but
> sometimes I need see state of little-endian registers
> (e.g. registers of PCI-connected peripherals) and it is not
> very hande to swap bytes manually.
> 
> This patch series add to memory commands (md and mw) ability
> to swap bytes "on the fly".
> 
> [RFC 1/3] add swab (swap bytes) option to memory_display()
> [RFC 2/3] commands: md: add '-x' option (swap bytes)
> [RFC 3/3] commands: mw: add '-x' option (swap bytes)

I like it :)

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
