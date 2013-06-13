Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UnCbx-0003to-W0
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 18:51:06 +0000
Received: by mail-ee0-f42.google.com with SMTP id c4so5314473eek.29
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2013 11:50:35 -0700 (PDT)
Message-ID: <51BA1476.3060309@gmail.com>
Date: Thu, 13 Jun 2013 20:50:30 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de> <51B6EED2.3010707@gmail.com>
 <20130613092557.GC32299@pengutronix.de> <51B9930B.8080609@gmail.com>
 <20130613124833.GD32299@pengutronix.de>
In-Reply-To: <20130613124833.GD32299@pengutronix.de>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 06/13/13 14:48, Sascha Hauer wrote:
> On Thu, Jun 13, 2013 at 11:38:19AM +0200, Sebastian Hesselbarth wrote:
>> On 06/13/13 11:25, Sascha Hauer wrote:
>>> Sounds like a plan. Functions existing both in barebox and Linux should
>>> behave the same way. However, if Linux turns out to do something silly
>>> or (for our usecase) too bloated, we shouldn't do the same just because
>>> Linux does it.

Sascha,

pushed a branch you can have a first look at to

git://github.com/shesselba/barebox-dove.git of-sync-v1

Started fixing some functions and merged of_find_node_by_something()
functions and corresponding helpers. Also converted some users to
the new helpers. I think it is a good point to send a first patch set.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
