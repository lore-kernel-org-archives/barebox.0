Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZZ7q-0005I9-9n
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 06:44:58 +0000
Date: Wed, 9 Sep 2015 08:44:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150909064435.GE18700@pengutronix.de>
References: <1441705005-29340-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441705005-29340-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] endian: sync {big,little}_endian.h with linux-4.2
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Sep 08, 2015 at 12:36:45PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> 
> This patch makes ehci-hcd.c happy on big-endian MIPS
> by importing __constant_cpu_to_le16()
> from linux.git/include/uapi/linux/byteorder/big_endian.h
> 
>  include/linux/byteorder/big_endian.h    | 118 +++++++++++++++++++++-----------
>  include/linux/byteorder/little_endian.h | 118 +++++++++++++++++++++-----------
>  2 files changed, 156 insertions(+), 80 deletions(-)

Applying: endian: sync {big,little}_endian.h with linux-4.2
error: patch failed: include/linux/byteorder/little_endian.h:9
error: include/linux/byteorder/little_endian.h: patch does not apply

include/linux/byteorder/little_endian.h hasn't been changed since 2011.
Do you have other patches in your tree?

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
