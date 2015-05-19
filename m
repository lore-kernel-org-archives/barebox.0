Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yubbr-0007fF-T8
 for barebox@lists.infradead.org; Tue, 19 May 2015 07:06:40 +0000
Date: Tue, 19 May 2015 09:06:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150519070613.GX6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 10/10] ARM: pbl: Add an option to validate DRAM
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, May 13, 2015 at 07:54:27PM -0700, Andrey Smirnov wrote:
> Add an option to perform DRAM region validation before using it. The
> framework allows individual boards to set up a memory validaion hook
> that would be called prior to Barebox using that region of memory.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

What usecase do you have for this patch? Is it debugging or something
you always want to enable on your hardware? Why must the
validate_memory_range function be board specific?

I see that you call validate_memory_range on potentially large areas of
memory, so I wonder if you can't call validate_memory_range from your
board setup code with the complete memory instead.
I am not very fond of overly using get_runtime_offset to calculate
pointers. Setting callback functions from early code which does not run
on its link address is something I really want to avoid.

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
