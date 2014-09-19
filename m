Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUrvn-0003TL-IH
 for barebox@lists.infradead.org; Fri, 19 Sep 2014 06:44:36 +0000
Received: by mail-we0-f181.google.com with SMTP id w62so2005446wes.12
 for <barebox@lists.infradead.org>; Thu, 18 Sep 2014 23:44:12 -0700 (PDT)
Message-ID: <541BD0B9.9090101@gmail.com>
Date: Fri, 19 Sep 2014 08:44:09 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140919054725.GD4992@pengutronix.de>
In-Reply-To: <20140919054725.GD4992@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/6] mvebu multi SoC support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09/19/2014 07:47 AM, Sascha Hauer wrote:
> On Wed, Sep 17, 2014 at 10:22:38PM +0200, Sebastian Hesselbarth wrote:
>> This is v2 of the Multi-SoC series for MVEBU. It has been tested
>> on Kirkwood (Guruplug), Dove (CuBox), and Armada 370 (Mirabox)
>> with the very same non-EABI binary. It should also work on Armada
>> XP but I cannot test right now.
> 
> Do you want to give it a test on Armada XP before I apply this series or
> are you fine with this without testing it on Armada XP?

I just tested it on Lenovo ix4-300d with Armada XP MV78230-A0, so feel
free to pick it up.

If I find some time, I'll polish ix4-300d patches and send them, too.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
