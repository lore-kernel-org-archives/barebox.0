Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTnvn-00032Z-Ck
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 13:06:37 +0000
Message-ID: <1543842381.5085.24.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Mon, 03 Dec 2018 14:06:21 +0100
In-Reply-To: <20181203125811.cm6mzwrjy7glrh5j@pengutronix.de>
References: <1543840931.5085.22.camel@erwinrol.com>
 <20181203125811.cm6mzwrjy7glrh5j@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: ubifs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, 2018-12-03 at 13:58 +0100, Sascha Hauer wrote:
> Hi Erwin,
> 
> On Mon, Dec 03, 2018 at 01:42:11PM +0100, Erwin Rol wrote:
> > Hallo all,
> > 
> > I want to create empty ubifs volumes, like this;
> > 
> > 1) ubiformat -y -q /dev/nand0.system
> > 2) ubiattach /dev/nand0.system
> > 3) ubimkvol -t dynamic /dev/nand0.system.ubi system 0
> > 
> > 4) .... ???? 
> > 
> > 5) mount -t ubifs -o rw /dev/nand0.system.ubi.system /mnt/system/
> > 
> > 
> > Is this possible with barebox?
> 
> It depends on what you do in step 4. Should be something like
> 'ubiupdatevol' or cp /some/image /dev/nand0.system.ubi.system. But then,
> yes, this works

But I need some sort of image, I can not create an empty ubifs volume
and mount it with just barebox tools ?

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
