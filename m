Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.ord1c.emailsrvr.com ([108.166.43.109])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmgvh-0001nF-Ht
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 15:28:58 +0000
Received: from smtp14.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp14.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 07E54C041C
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 10:28:31 -0500 (EST)
Received: by smtp14.relay.ord1c.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id B4574C0361
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 10:28:30 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <75fa7503-7633-3a67-4f5b-b857809bdfb5@mev.co.uk>
Date: Thu, 24 Jan 2019 15:28:29 +0000
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
Subject: Do I really need 3 buckets for state?
To: Barebox List <barebox@lists.infradead.org>

Hi,

Back when I was determining how to partition the spi-nor flash on my 
embedded device, I reserved two erase blocks (each of size 65536) for 
use as a barebox state partition.  I wasn't using it for anything at the 
time.  Now I want to use it to hold bootstate information for barebox 
bootchooser (for use in combination with rauc to handle system updates).

I am using backend-type="raw"; backend-storage-type="circular"; and 
backend-stridesize=<0x40>;.  It all works fine except that I get a 
warning from barebox:

Failed to initialize desired amount of buckets, only 2 of 3 succeeded

I have "fixed" the warning with a local patch to reduce the 
'desired_buckets' constant in "common/state/backend_storage.c" from 3 to 2.

My question is, how much trouble am I letting myself in for with this 
local patch?  I assume the state driver will only erase and update 1 
bucket at a time when the buckets are full.  Do I really need 3 buckets 
or will 2 buckets be enough?

Best regards,
Ian Abbott.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
