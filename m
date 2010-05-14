Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OCp2y-0000cJ-Bl
	for barebox@lists.infradead.org; Fri, 14 May 2010 07:11:00 +0000
Received: from localhost (localhost [127.0.0.1])
	by hbe.hbelightingsystems.com (Postfix) with ESMTP id 2DA8D4818065
	for <barebox@lists.infradead.org>;
	Fri, 14 May 2010 09:10:58 +0200 (CEST)
Received: from hbe.hbelightingsystems.com ([127.0.0.1])
	by localhost (hbe.hbelightingsystems.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with SMTP id F8dtVFxfKl2A for <barebox@lists.infradead.org>;
	Fri, 14 May 2010 09:10:49 +0200 (CEST)
Received: from eir.home.erwinrol.com (ip565e6370.direct-adsl.nl [86.94.99.112])
	(Authenticated sender: erwin@hbelightingsystems.com)
	by hbe.hbelightingsystems.com (Postfix) with ESMTP id 8C5BC4818064
	for <barebox@lists.infradead.org>;
	Fri, 14 May 2010 09:10:49 +0200 (CEST)
Message-ID: <4BECF779.50306@erwinrol.com>
Date: Fri, 14 May 2010 09:10:49 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <4BEBD0FD.6090504@erwinrol.com>
	<00b101caf30b$85b54640$911fd2c0$@cpdesign.com.au>
In-Reply-To: <00b101caf30b$85b54640$911fd2c0$@cpdesign.com.au>
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
Subject: Re: Watchdog support
To: barebox@lists.infradead.org

Marc Reilly wrote:
> Hi Erwin,
> 
>> does barebox have any watchdog support ?
> 
> I think the answer to your question is really dependent on what platform you
> are using, and exactly what you want the watchdog to do.

Platform does not really matter here, I mean does barebox trigger the 
watchdog if it is doing lengthy operations like writing flash to prevent 
it from being reset in the middle of the operation. That has little to 
do with if the platform has a watchdog or not.

So let me changes the question a bit;

Does barebox have a standard API to trigger and program a watchdog ?

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
