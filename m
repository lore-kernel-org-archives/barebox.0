Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsWjR-0000m7-5s
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 08:39:30 +0000
Date: Thu, 24 Feb 2011 09:39:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110224083925.GO7381@pengutronix.de>
References: <4D656F66.8030501@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D656F66.8030501@eukrea.com>
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
Subject: Re: i.MX51 & MMU
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Wed, Feb 23, 2011 at 09:34:46PM +0100, Eric Benard wrote:
> Hi,
> 
> has anyone recently tested barebox master on a babbage board with
> MMU enabled ? Here (not on a babbage, with a TO2 i.MX515 with 1 bank
> of DDR2), enabling MMU crash the board (which works fine with
> barebox with MMU disabled and with Linux 2.6.38-rc6 so the hardware
> seems not to be the root of the problem).

The memory space of the i.MX51 is a bit tight. It may be that you shadow
registers with the dma coherent memory space. Can you please post your
mmu setup code sniplet?
The babbage works with mmu enabled.

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
