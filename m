Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGN4-00030P-MZ
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:32:20 +0000
Date: Mon, 11 Jun 2018 08:31:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611063152.kior6txkjqi2n5j5@pengutronix.de>
References: <CACvFaDeA6k7d=1hOxCkOo1cXoxB566S3249XhZk3-zSNkQU3ag@mail.gmail.com>
 <20180607073113.7k7rupezic6t3iwj@pengutronix.de>
 <CACvFaDdHP13W4=GWoSmejJTN5qgwmbWzqhpOiK2S2ss+wVeq7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDdHP13W4=GWoSmejJTN5qgwmbWzqhpOiK2S2ss+wVeq7A@mail.gmail.com>
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
Subject: Re: Oftree from memory and access to start arguments
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Fri, Jun 08, 2018 at 01:03:11AM +0200, Pascal Vizeli wrote:
> Hi Sascha,
> 
> I wrote a patch they do that what you have suggest. It write the dtb
> from memory into a file.
> 
> My problem is, I don't know how I can share data between PBL and the
> main process?
> That are not the same binary, so I can't use extern keyword and on
> this early boot step I don't know how I can access to memory.
> I think with a simple pointer, I can't access to a memory area they
> are not my own?

I have a patch in the queue that shall solve this problem, but I never
came to it to make it ready. So far I would recommend some internal SRAM
to store a pointer. Another possibility would be to pass some less
memory to barebox_arm_entry() and pick up the data there. (I would
recommend at least 4k of memory to steal)

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
