Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22c.google.com ([2607:f8b0:4001:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cROgH-0000F8-RD
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 19:35:35 +0000
Received: by mail-io0-x22c.google.com with SMTP id j13so1258835iod.3
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2017 11:35:12 -0800 (PST)
MIME-Version: 1.0
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 11 Jan 2017 20:35:11 +0100
Message-ID: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
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
Subject: scripts/checkpatch.pl is deprecated
To: barebox@lists.infradead.org

Hello,
when using scripts/checkpatch.pl it may report:
  Unescaped left brace in regex is deprecated,
  passed through in regex at scripts/checkpatch.pl line 2267.

This error is shown if a patch contains a left brace with
no preceding space like in:
  if(condition){

Should the script be fixed or updated?

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
