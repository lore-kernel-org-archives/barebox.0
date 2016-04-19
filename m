Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asPoq-0004uX-DB
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:11:32 +0000
Date: Tue, 19 Apr 2016 09:11:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160419071110.GO9102@pengutronix.de>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
 <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
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
Subject: Re: Fwd: Micrel KSZ9031RN PHY problem
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org, Philipp Zabel <pza@pengutronix.de>

Hi Guillermo,

+Cc Philipp Zabel who ported the patch to barebox

On Mon, Apr 18, 2016 at 04:49:47PM +0200, Guillermo Rodriguez Garcia wrote:
> Hello all,
> 
> I am playing with barebox on an Atmel SAMA5D3 Xplained board. It is
> now working fine for the most part, however after updating to the
> latest sources from git I found a problem that I had not seen before.
> 
> This board has two Ethernet interfaces; eth0 uses a Micrel KSZ9031RN
> PHY, and eth1 uses a Micrel KSZ8081RNB PHY.
> 
> It seems that after release 2016.03.0, eth0 does not work anymore with
> some routers. Specifically I found this problem with a Comtrend
> VG-8050. I have tested other routers and the problem was not present
> there.
> 
> After some research it seems that the problem is caused by this
> commit: http://git.pengutronix.de/?p=barebox.git;a=commit;h=da89ee8f2e04e116410632a185024f58b8262d87
> 
> Before this commit eth0 was working fine. After this commit, the link
> cannot established anymore:
> 
> [...]
> barebox:/# ping 192.168.0.128
> ping failed: Network is down
> 
> Before diving further into this I thought it could be a good idea to
> ask, in case someone can shed some light here.

I have no idea what the issue is here. We might have to make this option
configurable via devicetree to give boards different options. Since the
patch comes from the Linux Kernel, do you have the same problems under
Linux?

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
