Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.iad3a.emailsrvr.com ([173.203.187.109])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0i4-0005qn-Eu
 for barebox@lists.infradead.org; Wed, 12 Jun 2019 10:42:29 +0000
Received: by smtp30.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8270D437F
 for <barebox@lists.infradead.org>; Wed, 12 Jun 2019 06:42:25 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <70b8a552-c423-9e74-ae80-5385a90e35ba@mev.co.uk>
Date: Wed, 12 Jun 2019 11:42:24 +0100
MIME-Version: 1.0
Content-Language: en-GB
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
Subject: Strange behaviour of 'exit' command
To: Barebox List <barebox@lists.infradead.org>

I noticed some strange behaviour in the 'hush' shell when the 'sh' and 
'exit' commands are used:

---------------------------------
barebox:/ sh
barebox:/ exit
t: No such file or directory
barebox:/ echo $?
127
barebox:/
---------------------------------

Also:

---------------------------------
barebox:/ sh
barebox:/ exit 2

sh - execute a shell script

Usage: sh FILE [ARGUMENT...]

t: No such file or directory
barebox:/
---------------------------------

Can anyone else reproduce this?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
