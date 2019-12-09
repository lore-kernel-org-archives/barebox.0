Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEN0-0003CG-Cs
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 08:26:20 +0000
Date: Mon, 9 Dec 2019 09:26:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209082612.7nzpuqdwtdy2k465@pengutronix.de>
References: <AM0PR08MB3842FB9ECFC8E8368A4DBF0DEB5E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR08MB3842FB9ECFC8E8368A4DBF0DEB5E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
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
Subject: Re: Writing to ubifs
To: Patrick Schneider <patrick.schneider@bhtronik.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Patrick,

On Sat, Dec 07, 2019 at 10:15:26AM +0000, Patrick Schneider wrote:
> I have a use case where I would need to be able to manipulate the
> fstab on the rootfs before booting, so I wondered if it is possible to
> write to a mounted ubifs from barebox?
> Currently I am trying with: 
> 
> mount /dev/nand0.root.ubi.rootfs /mnt/rootfs -o rw
> 
> which still yields in a readonly mount of the rootfs where I cannot
> manipulate files. Does barebox have write support to ubifs or is there
> another way?

No, barebox does not have UBIFS write support. What are you trying to
archieve?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
