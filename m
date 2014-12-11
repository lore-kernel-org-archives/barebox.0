Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyxoS-0006sF-Bs
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 07:05:25 +0000
Date: Thu, 11 Dec 2014 08:04:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211070458.GZ30369@pengutronix.de>
References: <548872F5.6090704@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <548872F5.6090704@ophrys.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Logical partition on barebox
To: Victorien Vedrine <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

Hi Victorien,

On Wed, Dec 10, 2014 at 05:21:09PM +0100, Victorien Vedrine wrote:
> Hi,
> I'm developping a board with barebox and Linux. For my application,
> I need 5 partition on my SD card (3 primary and 2 logical).
> On barebox prompt, I just see the 3 primary partitions
> (/dev/disk0.0, /dev/disk0.1, /dev/disk0.2) and 1 extended partition
> (/dev/disk0.3). Is there a way to see the 2 logical partitions ?

Which barebox version do you use?

barebox supports extended partitions since:

| commit 6fecd2aaca209884a0ec1f58ccc42b91d1d4b828
| Author: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
| Date:   Fri Nov 8 11:13:41 2013 +0100
| =

|     partitions: dos: parse extended partition
|     =

|     DOS MBRs might contain an extended partition that holds several logic=
al
|     partitions. Add these to the partitions of the block device.
|     =

|     Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

If your version is newer then this seems to be a bug.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
