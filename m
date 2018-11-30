Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSdLP-0000sF-Pw
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 07:36:13 +0000
Date: Fri, 30 Nov 2018 08:35:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181130073559.fingjrjaomumdlwj@pengutronix.de>
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
 <20181120084100.8737-3-s.hauer@pengutronix.de>
 <CAHQ1cqG4FSRnz_UkihPP-1mswx=hw=9V92-vS=tnF+oW5WmSVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG4FSRnz_UkihPP-1mswx=hw=9V92-vS=tnF+oW5WmSVQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: Add max_load_size option to boards that
 will need it
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

On Thu, Nov 29, 2018 at 10:11:47PM -0800, Andrey Smirnov wrote:
> 
> The change above bricks Barebox on RDU2 because load size of 0x11000
> isn't enough. Tracing what hdr->boot_data.size was set to prior to
> this series ends up with 0x1d000 as a number, using which appears to
> fix the problem on the real board, so we probably should max_load_size
> to at least that much. I am hoping you can fix it on your end, but let
> me know if you need me to generate a fixup patch.

I adjusted it to 0x31000 which is the maximum of free space in the SRAM.

BTW I am not really happy that we can't detect when we run out of space
in the SRAM. I am aware of that and hopefully we can find a solution,
but currently we have nothing more than just a few ideas.

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
