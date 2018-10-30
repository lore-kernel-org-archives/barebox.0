Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHOe2-0005ht-WB
 for barebox@lists.infradead.org; Tue, 30 Oct 2018 07:41:00 +0000
Date: Tue, 30 Oct 2018 08:39:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181030073934.ozmp24vip5jt4h44@pengutronix.de>
References: <CAEp+FuBh4S3a_yHmzegNCFDXqMDYjhpAMaWwWAE6zpfC9R0ERA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuBh4S3a_yHmzegNCFDXqMDYjhpAMaWwWAE6zpfC9R0ERA@mail.gmail.com>
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
Subject: Re: your mail
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Oct 29, 2018 at 06:53:55PM +0100, Mihaita Ivascu wrote:
> Hello,
> 
>      I am working with barebox 2018.04 version. I would like to create
> a script file that can be present initially in the new barebox image
> and then modified and saved by users.

You can put it to defaultenv/defaultenv-2-base/ in the barebox source
tree. It should be available in /env then later.

The barebox source tree contains a tool to read/write the environment
from Linux later.

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
