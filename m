Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjOMf-0003uB-Np
 for barebox@lists.infradead.org; Mon, 12 Sep 2016 10:21:28 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 12 Sep 2016 12:20:56 +0200
Message-Id: <1473675656-23309-1-git-send-email-ejo@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: exit on invalid option
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Barebox commands should not perform any action and return 0 if an
invalid parameter was given. This might cause undetected unintended
behvaior when calling commands with wrong options, either manually or
from a script.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/boot.c      | 2 ++
 commands/bootm.c     | 2 +-
 commands/dhcp.c      | 2 ++
 commands/fbtest.c    | 2 ++
 commands/hashsum.c   | 2 ++
 commands/help.c      | 2 ++
 commands/hwclock.c   | 2 ++
 commands/linux16.c   | 2 ++
 commands/loadb.c     | 3 +--
 commands/loadxy.c    | 3 +--
 commands/ls.c        | 2 ++
 commands/mem.c       | 2 +-
 commands/menutree.c  | 2 ++
 commands/reset.c     | 2 ++
 commands/splash.c    | 2 ++
 commands/usb.c       | 2 ++
 commands/usbserial.c | 2 ++
 17 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 1ff0e19..284b209 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -53,6 +53,8 @@ static int do_boot(int argc, char *argv[])
 		case 'w':
 			boot_set_watchdog_timeout(simple_strtoul(optarg, NULL, 0));
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/bootm.c b/commands/bootm.c
index 61b9086..c7cbdbe 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -97,7 +97,7 @@ static int do_bootm(int argc, char *argv[])
 			data.dryrun = 1;
 			break;
 		default:
-			break;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/dhcp.c b/commands/dhcp.c
index eb98bfc..4f4f549 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -45,6 +45,8 @@ static int do_dhcp(int argc, char *argv[])
 		case 'r':
 			retries = simple_strtoul(optarg, NULL, 10);
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/fbtest.c b/commands/fbtest.c
index d070d1f..bd0e140 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -137,6 +137,8 @@ static int do_fbtest(int argc, char *argv[])
 		case 'c':
 			color = simple_strtoul(optarg, NULL, 16);
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/hashsum.c b/commands/hashsum.c
index d05e571..70aab2c 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -42,6 +42,8 @@ static int do_hash(char *algo, int argc, char *argv[])
 			key = optarg;
 			keylen = strlen(key);
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/help.c b/commands/help.c
index 3d36d9b..819c406 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -98,6 +98,8 @@ static int do_help(int argc, char *argv[])
 		case 'a':
 			all = 1;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/hwclock.c b/commands/hwclock.c
index 6a0fe03..5073618 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -123,6 +123,8 @@ static int do_hwclock(int argc, char *argv[])
 			ntp_to_hw = 1;
 			ntpserver = optarg;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/linux16.c b/commands/linux16.c
index bb678bd..db8d081 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -176,6 +176,8 @@ static int do_linux16(int argc, char *argv[])
 				}
 			}
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/loadb.c b/commands/loadb.c
index 6180ce3..8c3906c 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -634,8 +634,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 			console_dev_name = optarg;
 			break;
 		default:
-			perror(argv[0]);
-			return 1;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/loadxy.c b/commands/loadxy.c
index a4b1bec..a2aab0f 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -67,8 +67,7 @@ static int do_loady(int argc, char *argv[])
 			cname = optarg;
 			break;
 		default:
-			perror(argv[0]);
-			return 1;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/ls.c b/commands/ls.c
index ce02f16..331a4d2 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -143,6 +143,8 @@ static int do_ls(int argc, char *argv[])
 		case 'l':
 			flags &= ~LS_COLUMN;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/mem.c b/commands/mem.c
index 907f1f7..29eaa80 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -74,7 +74,7 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 			*swab = 1;
 			break;
 		default:
-			return -1;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/menutree.c b/commands/menutree.c
index ea5f65f..cf37b01 100644
--- a/commands/menutree.c
+++ b/commands/menutree.c
@@ -26,6 +26,8 @@ static int do_menutree(int argc, char *argv[])
 		case 'm':
 			path = optarg;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/reset.c b/commands/reset.c
index 8300480..6eac532 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -34,6 +34,8 @@ static int cmd_reset(int argc, char *argv[])
 		case 'f':
 			shutdown_flag = 0;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/splash.c b/commands/splash.c
index 15b296b..2b70b29 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -41,6 +41,8 @@ static int do_splash(int argc, char *argv[])
 		case 'y':
 			s.y = simple_strtoul(optarg, NULL, 0);
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/usb.c b/commands/usb.c
index 48c6619..9a23aa2 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -123,6 +123,8 @@ static int do_usb(int argc, char *argv[])
 		case 's':
 			show = 1;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
diff --git a/commands/usbserial.c b/commands/usbserial.c
index e80b315..ad6bc63 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -44,6 +44,8 @@ static int do_usbserial(int argc, char *argv[])
 		case 'd':
 			usb_serial_unregister();
 			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
