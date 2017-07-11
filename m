Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from sonic306-22.consmr.mail.ne1.yahoo.com ([66.163.189.84])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUsiu-00042H-4J
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 10:48:57 +0000
Date: Tue, 11 Jul 2017 10:48:33 +0000 (UTC)
From: B Gol <behnam_golds@yahoo.com>
Message-ID: <1501522313.3325137.1499770113670@mail.yahoo.com>
In-Reply-To: <CAGUZs0ke=+-Hc+bj0yKcke_W08CPBBq2tb6Pkq=xL2FjrLb-YQ@mail.gmail.com>
References: <CAGUZs0ke=+-Hc+bj0yKcke_W08CPBBq2tb6Pkq=xL2FjrLb-YQ@mail.gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: B Gol <behnam_golds@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Bootchooser - remaining_attempts
To: Barebox List <barebox@lists.infradead.org>

According to the following passage of the documentation, I suggest you check and see if the  "global.system.reset" is causing the problem.

power-on: The remaining_attempts counters of all enabled targets are reset after a power-on reset ($global.system.reset="POR"). This means after a power cycle all targets will be tried again for the configured number of retries
all-zero: The remaining_attempts counters of all enabled targets are reset when none of them has any remaining_attempts left.

_______________________________________________

barebox mailing list

barebox@lists.infradead.org

http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
