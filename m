Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ol0router01.airtag.info ([88.190.231.88])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QKugs-0003kj-Nt
	for barebox@lists.infradead.org; Fri, 13 May 2011 15:54:11 +0000
Received: from localhost (localhost [127.0.0.1])
	by ol0router01.airtag.info (Postfix) with ESMTP id E728F1FA104
	for <barebox@lists.infradead.org>;
	Fri, 13 May 2011 17:54:07 +0200 (CEST)
Received: from ol0router01.airtag.info ([127.0.0.1])
	by localhost (ol0smtp01.airtag.local [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id X+wfu8Fb09yC for <barebox@lists.infradead.org>;
	Fri, 13 May 2011 17:54:05 +0200 (CEST)
Received: from SRVSBS.airtag.local (unknown [192.168.66.3])
	by ol0router01.airtag.info (Postfix) with ESMTP id E004A1FA0EF
	for <barebox@lists.infradead.org>;
	Fri, 13 May 2011 17:54:04 +0200 (CEST)
From: =?iso-8859-1?Q?Beno=EEt_Burnichon?= <Benoit.Burnichon@airtag.com>
Date: Fri, 13 May 2011 17:54:00 +0200
Message-ID: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
Content-Language: fr-FR
MIME-Version: 1.0
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
Subject: crc32 command
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I want to verify the version downloaded by tftp before installing it.

I have the file on my workstation:

$ cksum /var/lib/tftpboot/uImage-pcm038 
2156276197 2317276 /var/lib/tftpboot/uImage-pcm038

Under my barebox, I then try to verify the file:

barebox:/ crc32
Usage: crc32 [OPTION] [AREA]
Calculate a crc32 checksum of a memory area
Options:
  -f <file>   Use file instead of memory
  -v <crc>    Verfify

barebox:/ crc32 -f uImage-pcm038 -v 2156276197 0+2317276
CRC32 for uImage-pcm038 0x00000000 ... 0x00235bdb ==> 0xd484eccb != 0x808629e5 ** ERROR **
barebox:/ crc32 -f uImage-pcm038                        
CRC32 for uImage-pcm038 0x00000000 ... 0x00235bdb ==> 0xd484eccb


I have barebox-2010.11.0


How can I use crc32 to verify the files I transfer?

Regards,

Ben

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
