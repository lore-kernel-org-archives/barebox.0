Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7bcR-0004bQ-KX
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:12:12 +0000
Date: Thu, 4 Feb 2021 11:12:10 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20210204101210.GY19583@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
 <20210129161116.9971-2-a.fatoum@pengutronix.de>
 <20210202190317.GD8233@pengutronix.de>
 <91adf5c0-43c2-f2a8-a208-8403a72e44ca@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91adf5c0-43c2-f2a8-a208-8403a72e44ca@pengutronix.de>
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
Subject: Re: [PATCH 2/8] asm-generic: define fallback memcpy and memset for
 device I/O
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 02, 2021 at 08:41:22PM +0100, Ahmad Fatoum wrote:
> 
> 
> On 02.02.21 20:03, Sascha Hauer wrote:
> > On Fri, Jan 29, 2021 at 05:11:10PM +0100, Ahmad Fatoum wrote:
> >> The Atmel quadspi driver makes use of the memcpy_(to|from)io,
> >> but we don't define them on all platforms. Fix this to allow
> >> for easier porting of kernel code.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  include/asm-generic/io.h | 53 ++++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 53 insertions(+)
> > 
> > This patch breaks compilation for ARM:
> 
> Apologies, the order of the commits is wrong.
> I just sent out a v2 (which I forgot the v2 tag..) and made sure this time
> that all intermediate commits compile.

Ok, thanks.

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
