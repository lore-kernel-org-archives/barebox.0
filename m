Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWu2d-0000XT-Ip
 for barebox@lists.infradead.org; Tue, 22 May 2012 18:42:44 +0000
Date: Tue, 22 May 2012 20:42:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120522184240.GM30400@pengutronix.de>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

Hi Roberto,

On Tue, May 22, 2012 at 02:11:46PM +0200, Roberto Nibali wrote:
> Hi
> 
> I have been trying to boot a customized mx25 based device using barebox and
> I seem to be missing a few basic pointers, I believe, since it does not
> work. I have attached my config and put my current patch-set online:
> http://pastebin.com/KUVAwWRk. It's based on git commit 'dadcf5bd8f715'.
> 
> I don't know if the way of adding the boatloader to the SD card for later
> installing it onto NOR flash is the correct one. I currently issue a:
> 
> sudo dd if=barebox.bin of=/dev/sdc bs=512 skip=2 seek=2 && sync
>

You have configured barebox for external boot mode. This is not suitable
for SD cards, you have to use internal bootmode instead. This requires
that you provide a dtd header, see for example the babbage board for how
to do this.

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
