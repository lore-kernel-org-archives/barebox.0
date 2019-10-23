Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from your2.active-elements.de ([88.99.59.121] helo=atsonline.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDrl-00066b-0K
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 10:27:46 +0000
References: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Message-ID: <1694d1a3-6eb3-4146-e0f1-2988925f1832@atsonline.de>
Date: Wed, 23 Oct 2019 12:27:34 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: flash barebox to NAND
To: barebox@lists.infradead.org
Cc: Mihaita Ivascu <mihaita_ivascu@trimble.com>

On 2019-10-23 11:39 a.m., Mihaita Ivascu wrote:
> Hello all,
> 
>    I would like to know what possibilities do I have to flash a barebox
> image to mtd partition from Linux?
>   Using ubifs commands does not work. the barebox will not boot so
> probably additional info needs to be written except the barebox image
> itself.

I needed to flash updates to barebox from userspace myself and struggled 
with a solution for a bit.

I'm doing three things:

  1) get the correct /dev-device for barebox
  2) use `flash_erase` on that device
  3) use `nandwrite` to write the barebox_*.img onto the device

This works for me, and there's probably some documentation for this 
around, but i do not recall where i found it anymore.

good luck
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
