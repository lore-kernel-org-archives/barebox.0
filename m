Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WweYz-00040u-KK
 for barebox@lists.infradead.org; Mon, 16 Jun 2014 21:35:38 +0000
Date: Mon, 16 Jun 2014 23:35:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140616213513.GG15686@pengutronix.de>
References: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
 <20140616210859.bc53e769b34765c933c93867@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140616210859.bc53e769b34765c933c93867@gmail.com>
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
Subject: Re: [PATCH] ARM: AM335x: Beaglebone: Fix memory setup for Beaglebone
 black
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Jun 16, 2014 at 09:08:59PM +0400, Antony Pavlov wrote:
> On Mon, 16 Jun 2014 17:13:54 +0200
> Philipp Zabel <p.zabel@pengutronix.de> wrote:
> 
> Question to Sascha.
> 
> Can we preserve the 'memory' dts record in situations like this?
> 
> Is it possible just alter dts in early init code?
> Or something else?

For what do you want to preserve it? barebox never uses the memory node
directly to pass it to the kernel. The barebox memory banks are
initialized from the code and from the dts. When starting Linux the
memory node is (re)populated with the barebox memory banks

I may misunderstand what you are trying to archieve.

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
