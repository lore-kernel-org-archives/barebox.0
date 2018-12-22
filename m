Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gae8g-0001Mf-Iy
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 10:04:12 +0000
References: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
 <20181222095656.GA27911@ravnborg.org> <20181222100043.GA9339@ravnborg.org>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <a1fbae3e-1b53-49fc-04ec-4b581557c0af@rempel-privat.de>
Date: Sat, 22 Dec 2018 11:03:56 +0100
MIME-Version: 1.0
In-Reply-To: <20181222100043.GA9339@ravnborg.org>
Content-Language: en-GB
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
Subject: Re: MIPS multiimabe is brocken after "Images: Add image size to built
 images"
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am 22.12.18 um 11:00 schrieb Sam Ravnborg:
> On Sat, Dec 22, 2018 at 10:56:56AM +0100, Sam Ravnborg wrote:
>> Hi Oleksij
>>
>>> i can't build MIPS images after this patch:
>>>
>>> commit 3abeee3e45224c73245e32cb614c241cd195f1c4 (bb/master)
>>> Author: Sascha Hauer <s.hauer@pengutronix.de>
>>> Date:   Mon Dec 17 12:09:23 2018 +0100
>>
>> Can you elaborate a little what goes wrong.
>> Does the build fail or you cannot boot barebox?
> 
> If I want to try to build a mips variant of barebox,
> can you then recommend a toolchain to use?
> 
> Maybe one from:
> https://toolchains.bootlin.com/
> ?

Mostly I use native toolchain provided by debian/ubuntu
mips-linux-gnu-gcc

As alternative i also use toolchain provided by pengutronix:
https://www.pengutronix.de/de/software/toolchain.html

https://debian.pengutronix.de/
package: oselas.toolchain-2018.12-mips-softfloat-linux-gnu

-- 
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
