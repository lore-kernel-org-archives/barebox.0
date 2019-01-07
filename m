Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPjZ-0005Al-P5
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:54:07 +0000
Date: Mon, 7 Jan 2019 08:54:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190107075403.lpzswz2lcbtel4vj@pengutronix.de>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20190103111809.ctogjrhe4d2eyxg7@pengutronix.de>
 <20190104114737.7070d48ba7a2b486d6ee46e0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190104114737.7070d48ba7a2b486d6ee46e0@gmail.com>
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
Subject: Re: [PATCH v3 00/10] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 04, 2019 at 11:47:37AM +0300, Antony Pavlov wrote:
> On Thu, 3 Jan 2019 12:18:09 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Tue, Dec 18, 2018 at 10:19:33AM +0300, Antony Pavlov wrote:
> > > This patchseries adds initial RISC-V architecture support for barebox.
> > 
> > It's very nice to get RISC-V support for barebox.
> > 
> > The code looks fine from a first glance. I would prefer using multi
> > image support from the start of course, but I think I can live without
> > it.
> > I do not have the bandwidth to look at the code so closely to give any
> > valuable input though. I am fine to apply it if you want to, or you
> > could continue to develop it out of tree if that's more convenient for
> > you. Your choice.
> 
> Hi Sascha!
> 
> Please apply RISC-V patchseries.

Ok, just did that.

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
