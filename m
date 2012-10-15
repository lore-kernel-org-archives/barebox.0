Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNpym-0006Kx-RD
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 19:05:33 +0000
Date: Mon, 15 Oct 2012 23:05:30 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121015230530.9d03eafa11576ec8683613f1@mail.ru>
In-Reply-To: <20121015180359.GD5803@game.jcrosoft.org>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <1350318405-20081-3-git-send-email-shc_work@mail.ru>
 <20121015180359.GD5803@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/3] ARM: clps711x: Add generic board support (CLEP7212)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, 15 Oct 2012 20:03:59 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

...
> > +mkdir -p /mnt/disk0
> > +automount -d /mnt/disk0 '[ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/disk0'
> > +
> > +mkdir -p /mnt/disk1
> I do not see any block driver
Sorry, this is my upstream :)

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
