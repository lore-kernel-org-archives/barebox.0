Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaie9-00014y-5Y
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 11:39:22 +0000
References: <56D57A94.5040804@eurek.it>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56D57F51.2020803@eurek.it>
Date: Tue, 1 Mar 2016 12:38:57 +0100
MIME-Version: 1.0
In-Reply-To: <56D57A94.5040804@eurek.it>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX6 second boot: from SDCard [SOLVED]
To: barebox@lists.infradead.org

On 03/01/2016 12:18 PM, gianluca wrote:
> Hello everybody,
> first of all, I would say a BIG thank to everybody point me out on have
> a USB-Serial Downloader working and Barebox up and running in my custom
> iMX6Q based board.
>
> Right now I wish to know what can be done or not done to fireup the
> board from attached microSD card which is working because Barebox (from
> USB Downloader) is seeing it and find any partition scheme found on it.
>
> If I simply write the barebox-flash-image (currently a symlink to
> image/barebox-[BOARD].img file) to a sdcard with command:
>
> [my usb-adapter is seeing the sdcard as /dev/sdk]
>
> dd if=barebox-flash-image of=/dev/sdk
>
> it works, but actually I have lost all MBR partition scheme at all.
>
> I read somewhere (https://community.freescale.com/docs/DOC-95015) that
> writing the .imx file with an offset of 1K from the beginning of the
> card it should run.
>
> Actually it is not. :-(
>

I can answer to this by myself ;-)

The issue is to write skipping the fisrt 1024 of the sdcard (bs=512 
skip=2 and skipping the first 1k from the image itself [seek=2])

dd if=barebox-flash-image of=/dev/sdk bs=512 seek=2 skip=2

works fine.

Sorry for noise.
;-P

-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
