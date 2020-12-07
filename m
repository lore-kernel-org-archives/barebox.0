Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCp9-0003yi-GH
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:28:54 +0000
Date: Mon, 7 Dec 2020 10:28:40 +0100
Message-ID: <20201207092840.GH3977@pengutronix.de>
References: <20201204100421.2385465-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204100421.2385465-1-y.bas@phytec.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] images: Add automatic image crc generation for imd
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org

Hi Yunus,

On Fri, Dec 04, 2020 at 11:04:21AM +0100, Yunus Bas wrote:
> Since commit 9d12256bfcc6, the barebox IMD-header has an additional
> register space for CRC32 checksum. This is an important feature, since
> it allows us to verify the barebox image after flashing to the hardware.
> 
> This patch adds an optional feature for automatically generating the CRC32
> checksum and writing it into IMD-section for all generated image-files.
> Additionally, the file 'barebox-imd-crc', containing the list of IMD
> outputs including the CRC32-value, will be generated under the images
> directory.

It's not that easy unfortunately. Generating CRC IMD tags doesn't work
for many image types. For example the i.MX28 images are all encrypted,
so the bareboximd command won't find any valid tags in the binary. The
signed i.MX6 HAB images could be added a CRC to, but doing that would
invalidate the signature.
I'm afraid it's not possible to add a IMD crc to all images, we must
carefully select the images we can actually do that.

Having said that, generating the crcs automatically would be really
great and I have also thought about that. See the following series as
a starting point. It's not complete though, because it generates the
crcs also in HAB signed images.

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
