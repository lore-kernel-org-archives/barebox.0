Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2rYI-0004r0-JA
 for barebox@lists.infradead.org; Fri, 22 Jan 2021 08:12:19 +0000
Date: Fri, 22 Jan 2021 09:12:15 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20210122081215.GM19063@pengutronix.de>
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-4-andrej.picej@norik.com>
 <20210121091128.GG19063@pengutronix.de>
 <435bb8a9-96b8-4a09-1a42-19cc77e42ebf@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <435bb8a9-96b8-4a09-1a42-19cc77e42ebf@norik.com>
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
Subject: Re: [PATCH 3/3] ARM: i.MX: xload-gpmi-nand: apply errata 007117
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 21, 2021 at 01:23:16PM +0100, Andrej Picej wrote:
> Hi Sascha,
> 
> yes, unfortunately we have. We applied this just because we experienced
> hangs in device booting tests. After this patch the NAND booting problems
> went away. The booting failed during DMA page reading.
> I just tested this again and after excluding the changes in this patch the
> device fails at executing DMA commands. The boot fails in approximately one
> out of 10 boots.

Where exactly did it hang? In the xloader or later in the real barebox
driver?
You probably mean that it hangs in the xloader. Sorry to ask, but I'm
still trying to understand. That would mean the ROM leaves the GPMI in
an unusable state and I really wonder how this can happen.

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
