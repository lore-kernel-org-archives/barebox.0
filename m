Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmZNJ-0004kN-1b
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 07:24:34 +0000
Date: Thu, 24 Jan 2019 08:24:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190124072428.h2yykh6lrfmra7j2@pengutronix.de>
References: <20190118004113.20740-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190118004113.20740-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ls: Adjust amount of space allocated for filesize
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2019 at 04:41:13PM -0800, Andrey Smirnov wrote:
> Maximum file size on 64-bit system is 2^63-1 (9223372036854775807),
> which takes more that 14 characters of space. In order to keep things
> properly aligned adjust that spacing to 20 on 64-bit platforms.
> 
> Before:
> 
> ls -l /dev/
> d---------              0 .
> d---------              0 ..
> crw-------          16384 dds-eeprom
> crw-------            256 e1000-invm0
> crw-------          16384 eeprom0
> cr--------              0 full
> crw-------           2048 imx-ocotp
> crw-------          16384 main-eeprom
> crw-------             64 mdio0-phy00
> crw------- 9223372036854775807 mem
> c-w-------              0 netconsole-1
> c-w-------              0 null
> crw-------   256060514304 nvme0n1
> cr--------              0 prng
> crw-------     4294967296 ram0
> c-w-------              0 serial0-1
> cr--------              0 zero
> 
> After:
> 
> ls -l /dev/
> d---------                   0 .
> d---------                   0 ..
> crw-------               16384 dds-eeprom
> crw-------                 256 e1000-invm0
> crw-------               16384 eeprom0
> cr--------                   0 full
> crw-------                2048 imx-ocotp
> crw-------               16384 main-eeprom
> crw-------                  64 mdio0-phy00
> crw------- 9223372036854775807 mem
> c-w-------                   0 netconsole-1
> c-w-------                   0 null
> crw-------        256060514304 nvme0n1
> cr--------                   0 prng
> crw-------          4294967296 ram0
> c-w-------                   0 serial0-1
> cr--------                   0 zero
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/ls.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)

Applied, thanks

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
