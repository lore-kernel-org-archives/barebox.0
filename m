Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJR3H-00023d-Fg
 for barebox@lists.infradead.org; Sun, 04 Nov 2018 22:39:29 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id EA75D2400E6
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2018 23:39:09 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 42p9hr5wRTz9rxK
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2018 23:39:08 +0100 (CET)
Date: Sun, 4 Nov 2018 23:39:08 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181104233908.48ce2577@yaise-pc1>
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
Subject: barebox state is not fixed up into kernel-device-tree
To: Barebox List <barebox@lists.infradead.org>

Hi,

I'm using a device-state (for bootchooser) which is stored in an eeprom.

Works fine from within barebox - read and write.

Userspace does not see the state:

  Neither /aliases/state nor /state found

The displayed device-tree when booting with 'boot -v -v <name>' does
not contain the state-entry.

However, there is a warning of a failed fixup:

  Failed to fixup node in of_state_fixup+0x1/0x1ac: No such device

Could it be that the eeprom-alias is missing? I'm still learning
device-tree and stuff and I'm not yet entirely sure how everything is
related.

The partition is created within a 

  &eeprom {
     [..]
  }

section and eeprom is defined as 

  eeprom: eeprom@52 {

  }

(I added the 'eeprom: '- name/alias)

Where am I missing the link?

best regards,
--
Patrick.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
