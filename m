Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp117.ord1d.emailsrvr.com ([184.106.54.117])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQvz1-0002It-Na
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 13:29:17 +0000
Received: from smtp15.relay.ord1d.emailsrvr.com (localhost [127.0.0.1])
 by smtp15.relay.ord1d.emailsrvr.com (SMTP Server) with ESMTP id 0D84C6007F
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 09:28:51 -0400 (EDT)
Received: by smtp15.relay.ord1d.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id B95E960080
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 09:28:50 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <54f52983-da4d-35a6-e0ed-edfe286f61c5@mev.co.uk>
Date: Fri, 30 Jun 2017 14:28:49 +0100
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG v2017.07.0] readlink -f command broken?
To: Barebox List <barebox@lists.infradead.org>

Hi folks,

I know there were changes to do with links to directories in v2017.07.0, 
but this looks like a bug in readlink with the -f option:

barebox@fred:/ ls -l /mnt/root
lrwxrwxrwx              7 bin -> usr/bin
drwxr-xr-x            304 boot
drwxr-xr-x            160 dev
drwxr-xr-x           1920 etc
drwxrwsr-x            160 home
lrwxrwxrwx              7 lib -> usr/lib
drwxr-xr-x            160 mnt
dr-xr-xr-x            160 proc
drwx------            160 root
drwxr-xr-x            160 run
lrwxrwxrwx              8 sbin -> usr/sbin
drwxr-xr-x            224 srv
drwxr-xr-x            160 sys
drwxrwxrwt            160 tmp
drwxr-xr-x            480 usr
drwxr-xr-x            544 var
barebox@fred:/ readlink -f /mnt/root/lib libdir
barebox@fred:/ echo $libdir
/usr

(I expected $libdir to contain "/mnt/root/usr/lib" here, as it did in 
barebox v2017.06.1.)

(Let's try it without the -f option....)

barebox@fred:/ readlink /mnt/root/lib libdir2
barebox@fred:/ echo $libdir2
usr/lib

(That is the same as barebox v2017.06.1.)

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
