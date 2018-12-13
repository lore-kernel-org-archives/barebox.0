Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr680129.outbound.protection.outlook.com
 ([40.107.68.129] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXTD3-00034V-PG
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 15:47:35 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Thu, 13 Dec 2018 15:47:20 +0000
Message-ID: <24299a5b0abeaa6e99252753c9043121678bd0ce.camel@allegion.com>
Content-Language: en-US
Content-ID: <A03CED81C42C18458667E17D7214CD5D@prod.exchangelabs.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bareboxenv -s: output depends on filesystem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I'm currently trying to get reproducible barebox binaries.

One problem I'm facing is, that the barebox defaultenv generated during build
depends on the filesystem used on the build machine. That is, because
envfs_save() uses recursive_action(), which in turn uses readdir() without
sorting the entries afterwards.

quoting man readdir:
  The order in which filenames are read by successive calls to readdir() depends
on the filesystem implementation; it is unlikely that the names will be sorted
in any fashion.

In fact, on ext4 I get a different barebox binary as on XFS.


Is this considered something worth being fixed?

It should be sufficient to build a list of directories and sort it before
recursing. It is, however, shared code which is also used by the saveenv command
and I'm not sure if malloc'ing recursively is a good idea on all targets where
saveenv is used.

I would go ahead and implement it if no one opposes.

Should I introduce a flag for recursive_action() that allows taking an
"unsorted" (non-malloc) code path for use with the saveenv command?


- Florian
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
