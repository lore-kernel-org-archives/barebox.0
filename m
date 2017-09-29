Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuuJ-0001i8-Hn
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 13:00:50 +0000
Date: Fri, 29 Sep 2017 15:00:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170929130020.joavcynokhjid3wg@pengutronix.de>
References: <1043852685.129432.1506673503086@mail.vodafone.de>
 <20170929113543.p2unhzcdk4knwpvx@pengutronix.de>
 <1240553302.113348.1506688301119@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1240553302.113348.1506688301119@mail.vodafone.de>
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
Subject: Re: how to persistently save config values
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 29, 2017 at 02:31:40PM +0200, Giorgio Dal Molin wrote:
> Hi Sascha,
> 
> thank you for the answer.
> 
> I just experimented a bit with the environment and the nv vars
> and I think I'll go this way.
> 
> I was a bit surprised by the saveenv command though: my understanding
> of the (default) environment was that it was a read only blob
> hardcoded in the barebox image

Yes, it is.

> I thought if I want some new/dynamic
> env content to be saved for the next reboot I have to explicitly provide
> a storage disk/cf/mtd partition to the saveenv and then to the loadenv.

Yes, true. Normally the board code provides a storage place. In case of
UEFI the storage place is set to a EFI Variable in common/efi/efi.c:305

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
