Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gae5e-0000yl-Uw
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 10:01:04 +0000
References: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
 <20181222095656.GA27911@ravnborg.org>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <33739d90-5710-b9b9-bee9-73f2d0ff1e25@rempel-privat.de>
Date: Sat, 22 Dec 2018 11:00:46 +0100
MIME-Version: 1.0
In-Reply-To: <20181222095656.GA27911@ravnborg.org>
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

Am 22.12.18 um 10:56 schrieb Sam Ravnborg:
> Hi Oleksij
> 
>> i can't build MIPS images after this patch:
>>
>> commit 3abeee3e45224c73245e32cb614c241cd195f1c4 (bb/master)
>> Author: Sascha Hauer <s.hauer@pengutronix.de>
>> Date:   Mon Dec 17 12:09:23 2018 +0100
> 
> Can you elaborate a little what goes wrong.
> Does the build fail or you cannot boot barebox?

The build will fail with:

  OBJCOPYB images/start_black_swift.pblb
  OBJCOPYB images/start_dptechnics_dpt_module.pblb
  OBJCOPYB images/start_8devices_lima.pblb
  OBJCOPYB images/start_tplink_mr3020.pblb
  OBJCOPYB images/start_tplink_wdr4300.pblb
invalid magic
barebox/images/Makefile:68: recipe for target
'images/start_black_swift.pblb' failed
make[1]: *** [images/start_black_swift.pblb] Error 1
make[1]: *** Waiting for unfinished jobs....
invalid magic
invalid magic
barebox/images/Makefile:68: recipe for target
'images/start_dptechnics_dpt_module.pblb' failed
make[1]: *** [images/start_dptechnics_dpt_module.pblb] Error 1
barebox/images/Makefile:68: recipe for target
'images/start_tplink_mr3020.pblb' failed
make[1]: *** [images/start_tplink_mr3020.pblb] Error 1
invalid magic
barebox/images/Makefile:68: recipe for target
'images/start_8devices_lima.pblb' failed
make[1]: *** [images/start_8devices_lima.pblb] Error 1
invalid magic
barebox/images/Makefile:68: recipe for target
'images/start_tplink_wdr4300.pblb' failed
make[1]: *** [images/start_tplink_wdr4300.pblb] Error 1
rm images/start_black_swift.pbl
Makefile:501: recipe for target 'images' failed
make: *** [images] Error 2

-- 
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
