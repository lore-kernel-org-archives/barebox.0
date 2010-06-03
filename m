Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKHDJ-0000no-Q3
	for barebox@lists.infradead.org; Thu, 03 Jun 2010 20:40:30 +0000
Received: from localhost (localhost [127.0.0.1])
	by hbe.hbelightingsystems.com (Postfix) with ESMTP id 1BC724818065
	for <barebox@lists.infradead.org>;
	Thu,  3 Jun 2010 22:40:27 +0200 (CEST)
Received: from hbe.hbelightingsystems.com ([127.0.0.1])
	by localhost (hbe.hbelightingsystems.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with SMTP id FHEXRWdr4eO9 for <barebox@lists.infradead.org>;
	Thu,  3 Jun 2010 22:40:18 +0200 (CEST)
Received: from eir.home.erwinrol.com (ip565e6370.direct-adsl.nl [86.94.99.112])
	(Authenticated sender: erwin@hbelightingsystems.com)
	by hbe.hbelightingsystems.com (Postfix) with ESMTP id 9F7F04818064
	for <barebox@lists.infradead.org>;
	Thu,  3 Jun 2010 22:40:18 +0200 (CEST)
Message-ID: <4C081332.6080904@erwinrol.com>
Date: Thu, 03 Jun 2010 22:40:18 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
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
Subject: script error
To: barebox@lists.infradead.org

Hallo,

i have a problem with running scripts. It seems that as soon a command 
in a script fails the whole script is terminated.

I am trying the following in /env/bin/init

echo "Loading env A"
mkdir /env_a/
loadenv /dev/biosdisk0.1 /env_a/
if [ -f /env_a/revision ]; then
         . /env_a/revision
fi


The /dev/biosdisk0.1 is empty so the loadenv fails, and that also stops 
the /env/bin/init script, everything after the "fi" is never executed.

any ideas ?

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
