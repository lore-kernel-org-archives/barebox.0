Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCPfI-0002Ai-50
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 08:55:16 +0000
Received: by mail-we0-f180.google.com with SMTP id w61so841530wes.11
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 01:54:54 -0700 (PDT)
Message-ID: <53D8B2DA.7050409@gmail.com>
Date: Wed, 30 Jul 2014 10:54:50 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
 <20140730063504.GK23235@pengutronix.de>
In-Reply-To: <20140730063504.GK23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/2] i2c: add Marvell 64xxx driver;
 fix Makefile indentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 30.07.2014 08:35, Sascha Hauer wrote:
> I'm fine with the driver. Will you ack it once your fine with it aswell?

Hmm, it still throws a lot of "I2C bus error" on i2c_probe when no
device is at that address and it still uses silly interrupt
nomenclature.

Anyway, it works and I'll maybe fix above someday, so

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

and

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

on Armada XP this time.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
