Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWeVm-0001I6-0f
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 07:30:27 +0000
Date: Thu, 26 Jan 2017 08:30:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170126073003.rpufxl2us6mc5i4b@pengutronix.de>
References: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
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
Subject: Re: Accessing non-volatile variables from Linux
To: Frank Hunleth <fhunleth@troodon-software.com>
Cc: barebox@lists.infradead.org

Hi Frank,

On Wed, Jan 25, 2017 at 02:21:55PM -0500, Frank Hunleth wrote:
> Hi,
> 
> I'm wondering if it's possible to read and modify Barebox environment
> variables from Linux in a way similar to U-Boot's fw_printenv and
> fw_setenv. If that's not possible, is there another way for communicating
> between Linux and Barebox? Apologies if I totally missed a section in the
> docs that describes this.

There is scripts/bareboxenv.c which gets compiled for the target when
CONFIG_BAREBOXENV_TARGET is enabled. This allows you to unpack the
barebox environment device (mtd/partition) to a directory and back to
the device after modifying. There is no direct getenv/setenv
functionality, you would have to do a manual echo/cat to the variable
files.

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
