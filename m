Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9CPt-0002Ax-Kj
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 10:01:02 +0000
Message-ID: <504722D8.1050409@webware-experts.de>
Date: Wed, 05 Sep 2012 12:00:56 +0200
From: Norbert Roos <nroos@webware-experts.de>
MIME-Version: 1.0
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel> <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel>
In-Reply-To: <1346838098.3625.10.camel@lws-weitzel>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MLO doesn't work, rest is ok
To: J.Weitzel@phytec.de, barebox@lists.infradead.org

On 09/05/2012 11:41 AM, Jan Weitzel wrote:

> I just test it here it works.

Did another test - still doesn't work:

tar xfj barebox-2012.08.0.tar.bz2
cd barebox-2012.08.0
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-
make pcm049_xload_defconfig
make
cp MLO barebox.bin <SD card>

> Did you use pcm049_xload_defconfig?

Yes

> SD card layout ok?

As described in various places. A downloaded MLO does work.

> Special nand mounted?

What is this? NAND is enabled in the config...

Thank you so far
Norbert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
