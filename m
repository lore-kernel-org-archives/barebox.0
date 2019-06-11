Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp125.ord1c.emailsrvr.com ([108.166.43.125])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8q-0004IE-Em
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 14:52:54 +0000
Received: by smtp16.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5DDBDC038E
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 10:52:49 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <ccde5e10-c624-f8b1-93f8-48d76ff699bd@mev.co.uk>
Date: Tue, 11 Jun 2019 15:52:48 +0100
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
Subject: Environment variables set by /env/bin/init disappear when script exits
To: Barebox List <barebox@lists.infradead.org>

Since commit 90df2a955e3c ("defaultenv: Convert init script to C"), if 
the legacy /env/bin/init script is still being used, any environment 
variables that were set in the script (such as the PS1 prompt) disappear 
when the script exits.  I guess it is because the script is now run 
directly by run_command(initfile) (initfile is "/env/bin/init") rather 
than by run_command("source /env/bin/init").

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
