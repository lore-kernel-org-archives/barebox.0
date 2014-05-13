Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk6F2-00045X-9d
 for barebox@lists.infradead.org; Tue, 13 May 2014 06:31:08 +0000
Date: Tue, 13 May 2014 08:30:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513063044.GJ5858@pengutronix.de>
References: <5367BAF3.50607@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5367BAF3.50607@kiwigrid.com>
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
Subject: Re: boot command is broken?
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Mon, May 05, 2014 at 06:23:15PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> Hi,
> 
> after update to v2014.05.0 'boot -l' displays only one entry, although
> in /env/boot/ exists more files. Can anyone confirm this?

This is because you have entries in global.boot.default. Try setting
this variable empty, then you'll see all entries from /env/boot/. Or try
boot -l /env/boot which will show all entries in /env/boot regardless of
global.boot.default.

I wish I could say RTFM, but I must first write or at least update TFM :(

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
