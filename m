Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from optimeas.de ([78.46.18.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZh59-00025j-9y
 for barebox@lists.infradead.org; Tue, 07 May 2013 12:33:23 +0000
Received: from [192.168.178.21] (krlh-d9be6584.pool.mediaWays.net
 [217.190.101.132])
 by optimeas.de (Postfix) with ESMTPSA id 2B6474207A56
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 14:33:02 +0200 (CEST)
From: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Date: Tue, 07 May 2013 12:33:03 +0000
Message-Id: <em7b5cc4bb-6894-49f9-9210-8a36eef2d5d4@plh001-think>
Mime-Version: 1.0
Reply-To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
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
Subject: Installing barebox for karo-tx53
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I want to install barebox on a Karo TX53 module as a primary bootloader.
Now I have a few questions:

a)
With wich version should I start. I found the branch karo-tx53 at 
git://github.com/gchiii/barebox-tx53.git
Is this the right one (as it seems to be quit old with latest commit 9 
month ago)

Or should I start with the master branch at 
git://git.pengutronix.de/git/barebox.git ?

b)
Is there even a simpler way as I am using ptxdist?

c) How can I flash barebox over u-boot, which is my current bootloader?

Best regards
Patrick


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
